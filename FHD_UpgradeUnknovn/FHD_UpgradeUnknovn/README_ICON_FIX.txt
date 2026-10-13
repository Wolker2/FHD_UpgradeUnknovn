v0.2.37 custom-emblem CacheData root-key fix

Fixes the v0.2.36 crash:
TDataEC.PathGetBuf. path=2FHDUU_Researched

The researched item keeps Owner=Kling and EqCustomFaction='FHDUU_Researched'.
Main.dat resolves Data.Race.Emblem.2FHDUU_Researched to 2FHDUU_Researched.
CacheData.dat now registers 2FHDUU_Researched at the CACHE ROOT, exactly as requested by the engine,
and points it to DATA\Race\2FHDUU_Researched.png.

Vanilla Blazer/Keller/Terron emblems are untouched.
