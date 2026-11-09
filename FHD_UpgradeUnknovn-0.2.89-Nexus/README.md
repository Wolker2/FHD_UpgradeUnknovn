# FHD_UpgradeUnknovn 0.2.89 — recovered review sources

This repository reconstructs both modules supplied in `FHD_UpgradeUnknovn-0.2.89.rar` (a ZIP container despite its extension). All **16 runtime files**, including all **six PE32 DLLs**, rebuild byte-for-byte against `original-file-sha256.json`. The uploaded behavior and module names are preserved. No approval from Nexus Mods is implied by these checks; no specific moderator message was included with this upload.

## Contents for review

| Source | Rebuilt files |
| --- | --- |
| `source/modules/` | Five DAT configs and two `ModuleInfo.txt` files |
| `source/script/FHDUU_Dialog.rson` and `.layout.json` | One SCR6 dialog |
| `source/native/*/native.S`, `link.ld`, `pe_profile.json` | Six x86 DLLs |
| `source/graphics/2IconFHDUU.json` | One GI type-2 image |
| `source/artwork/2FHDUU_Researched.png` | Original editable PNG |

The native sources are **recovered assembly, not the author's original C/C++ project**. The DLL symbol tables name `fhduu_dualmm.c`, `fhduu_image_compat.c`, `fhduu_mm_icons.c`, `fhduu_mm_mechanics.c`, `fhduu_mmtext.c`, `compact_mm.c`, and `fhduu_scriptlibs_bridge.c`, but those files were not supplied. Instruction comments and recovered function names support review. Explicit encodings preserve noncanonical instructions and alignment; branch operands are label expressions. Typed PE profiles describe data, exports, relocations, headers and COFF metadata. No complete original executable blob is used as a build input.

Native assembly uses fixed section offsets (`.org`) and original absolute addresses. Changes that alter instruction lengths or move data require corresponding layout/relocation updates. The unchanged recovery builds automatically. DLLs target 32-bit Windows/i386; an ELF32 intermediate is used only to assemble `.text`, then the builder emits the original PE32 layout.

## Automated build and checks

The included GitHub Actions workflow builds both installable modules and publishes a downloadable artifact. It runs the same verification used for `build-verification.json`.

On Ubuntu 24.04 with Python 3.12 and GNU binutils 2.42:

```sh
python3 -m pip install -r requirements-tests.txt
python3 tests/verify.py
python3 scripts/build.py --verify-original
```

Output: `dist/FHD_UpgradeUnknovn-0.2.89-install.zip`, with both modules below `Mods/FHD_MODS/`. The builder itself uses only Python's standard library and GNU `as`, `ld`, `objcopy`; Unicorn is used by tests only. For intentional source edits, omit `--verify-original`, which requires the original version's SHA-256 hashes. DAT byte identity also depends on zlib compression behavior (verified with zlib 1.3.2).

The source ZIP contains no generated DLL/DAT/SCR/GI files, build caches, git history, duplicate install ZIP or original upload. The legacy `FHDUU_IconLink.txt` explanation is consolidated here: the researched item uses faction `FHDUU_Researched`, the emblem mapping names `2FHDUU_Researched`, and CacheData points to the supplied PNG. The legacy GI is also preserved as typed source and rebuilt for completeness.

## Script and configuration recovery

The RSON contains 24 named objects and the recovered source text. Its companion layout contains 124 typed records that serialize this release's SCR6 runtime fields. RSON schema version 8 does **not** change the emitted SCR version: the output remains SCR6. The layout preserves legacy fields and reads executable text directly from the RSON objects. A test edits RSON global code, rebuilds it, and independently parses the resulting SCR to verify the change and preservation of other fields.

The serializer handles this recovered runtime model; it does not implement the official editor's general compiler for arbitrary new visual graphs. Opening/recompiling this RSON in the RScript GUI was **not tested**. No editor-side or user-side recovery is needed to rebuild the supplied version with this repository.

DAT JSON retains block order, repeated entries, values and sort metadata. Metadata is stored as UTF-8 source and rebuilt with the original UTF-16LE BOM and line endings. Both `Rus/Lang.dat` and `Eng/Lang.dat` are identical in the uploaded release; neither was translated or changed.

## Dependencies and validation limits

Both modules require **UtilityFunctionsPack**, which is external and was not included in the upload. The main module declares the UtilityBridge as a dependency, and the UtilityBridge declares the main module as a dependency. These mutual declarations and priorities (2 and 3) are preserved; compatibility with the actual mod loader requires a live game test. The main module also retains conflicts with `EvoFreeInflation` and `EvoNoInflation`.

`build-verification.json` records 88 source/build/reference checks and 110 native instruction checks. Verification rebuilds from a temporary source-only directory, compares all 16 SHA-256 hashes, decodes/re-encodes DATs, parses SCR through EOF, checks literal local script references and configured runtime paths, and executes DLL entry/descriptor/invalid-host routines at preferred and relocated addresses using Unicorn. The bridge's missing-PEB path returns 101 on the first call and 99 on later calls; this original failed-initialization behavior is preserved.

These checks do not execute the Windows loader, UtilityFunctionsPack or the game executable. Successful hook installation, game address compatibility, actual research bonuses, save/load behavior, gameplay UI and official RScript GUI compatibility remain unverified. The recorded test environment and precise scope are included in the verification report.

## Provenance

Input SHA-256: `5d39d7f0c03f8ed51fe8a247a3d0c1065cfe4448ed8af1676b99c64d929903d3` (68,304 bytes). Original metadata credits **Prolog_D**. This recovery adds build tooling, readable recovered sources and verification; it does not assert authorship of the original mod or assign a new license to it. No original license file was supplied.
