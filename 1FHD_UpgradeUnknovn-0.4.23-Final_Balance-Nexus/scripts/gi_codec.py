"""Lossless editing of Space Rangers GI type 0/1/2, including type-2 pixels and RLE."""
import struct

def decode(data):
    assert len(data)>=64 and data[:4]==b'gi\0\0'
    h=struct.unpack_from('<15I',data,4);kind,count=h[9:11]
    assert (kind,count) in [(0,1),(1,1),(2,3)]
    result={'format':'srhd-gi012-json-v1','type':kind,'version':h[0], 'bounds':list(h[1:5]), 'masks':list(h[5:9]),'reserved':list(h[11:15]),'layers':[]}
    consumed=64+32*count
    for index in range(count):
        offset,size,*desc=struct.unpack_from('<8I',data,64+32*index)
        layer={'bounds':desc[:4],'reserved':desc[4:],'empty_offset':offset if not size else 0}
        if not size:layer['commands']=[];result['layers'].append(layer);continue
        assert offset==consumed;payload=data[offset:offset+size];assert len(payload)==size
        if kind==0:
            if h[5:9]==(0xf800,0x7e0,0x1f,0):fmt='H';layer['pixel_format']='rgb565'
            elif h[5:9]==(0xff0000,0xff00,0xff,0xff000000):fmt='I';layer['pixel_format']='argb8888'
            else:raise ValueError('Unknown GI masks')
            layer['pixels']=[v[0] for v in struct.iter_unpack('<'+fmt,payload)]
            w,hei=desc[2]-desc[0],desc[3]-desc[1];assert len(layer['pixels'])==w*hei
        else:
            enc,w,hei,res=struct.unpack_from('<4I',payload);assert enc==size-16
            layer.update(width=w,height=hei,rle_reserved=res,pixel_format='transparency6' if kind==2 and index==2 else 'rgb565',commands=[])
            pos=16;fmt='B' if kind==2 and index==2 else 'H';stride=struct.calcsize(fmt)
            while pos<len(payload):
                cmd=payload[pos];pos+=1
                if cmd in (0,128):layer['commands'].append({'end_row':cmd})
                elif cmd<128:layer['commands'].append({'skip':cmd})
                else:
                    n=cmd-128;values=list(struct.unpack_from('<'+fmt*n,payload,pos));pos+=stride*n
                    layer['commands'].append({'pixels':values})
            assert pos==len(payload)
        consumed+=size;result['layers'].append(layer)
    assert consumed==len(data), 'GI trailing bytes'
    assert encode(result)==data, 'GI not byte-identical'
    return result

def encode(source):
    assert source['format']=='srhd-gi012-json-v1';kind=source['type'];layers=source['layers']
    assert (kind,len(layers)) in [(0,1),(1,1),(2,3)]
    header=struct.pack('<4s15I',b'gi\0\0',source['version'],*source['bounds'],*source['masks'],kind,len(layers),*source['reserved'])
    offset=64+32*len(layers);desc=[];payloads=[]
    for index,layer in enumerate(layers):
        if kind==0 and 'pixels' in layer:
            fmt='H' if layer['pixel_format']=='rgb565' else 'I';bounds=layer['bounds']
            assert len(layer['pixels'])==(bounds[2]-bounds[0])*(bounds[3]-bounds[1])
            payload=struct.pack('<'+fmt*len(layer['pixels']),*layer['pixels'])
        else:
            body=bytearray();fmt='B' if kind==2 and index==2 else 'H'
            for c in layer['commands']:
                if 'end_row' in c:assert c['end_row'] in [0,128];body.append(c['end_row'])
                elif 'skip' in c:assert 1<=c['skip']<=127;body.append(c['skip'])
                elif 'pixels' in c:
                    vals=c['pixels'];assert 1<=len(vals)<=127
                    if fmt=='B':assert all(0<=v<=63 for v in vals)
                    body.append(128+len(vals));body.extend(struct.pack('<'+fmt*len(vals),*vals))
                else:raise ValueError('GI RLE command')
            payload=struct.pack('<4I',len(body),layer['width'],layer['height'],layer['rle_reserved'])+body if body else b''
        desc.append(struct.pack('<8I',offset if payload else layer['empty_offset'],len(payload),*layer['bounds'],*layer['reserved']))
        payloads.append(payload);offset+=len(payload)
    return header+b''.join(desc)+b''.join(payloads)
