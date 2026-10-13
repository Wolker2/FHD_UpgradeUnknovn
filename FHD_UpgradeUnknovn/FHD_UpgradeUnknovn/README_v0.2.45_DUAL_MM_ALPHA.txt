FHD_UpgradeUnknovn v0.2.45 DUAL MM ALPHA

Base: confirmed working v0.2.44 ART_COMPAT_FIX.
The v0.2.44 CHD artifact compatibility bridge is preserved.

New experimental mechanic for successfully researched equipment with EqCustomFaction=FHDUU_Researched:
- two DIFFERENT ordinary micromodules can be installed at the same time;
- research result MM I: candidate MM I, MM II or MM III;
- research result MM II: candidate MM I or MM II;
- research result MM III: candidate MM I only;
- the same micromodule cannot occupy both slots;
- vanilla equipment/weapon compatibility remains in force.

Native storage:
- first ordinary MM is applied by the original MicroModuleToEquipment routine, then only its stored id is moved FBonus -> FSpecial;
- second MM remains in FBonus;
- a third MM is naturally blocked because FBonus is occupied;
- both FBonus and FSpecial are native serialized equipment fields.

The game already serializes and processes FBonus and FSpecial separately. The first in-game test must confirm the exact visual placement of both icons in the equipment UI.

Safety:
- if FSpecial is already occupied before the first ordinary MM is inserted, the mod does not overwrite it; only the regular FBonus slot remains available.
- old/non-researched equipment delegates to the original game logic.

Expected XenoNative.log after the first dual-MM insertion:
[FHDUUArtCompat] dual MM: first MM stored in FSpecial

Alpha runtime checks still required:
- verify both MM icons are visible simultaneously;
- verify save/load preserves both;
- verify removing/replacing an MM does not disturb the other slot.
Do not treat the dual-MM mechanic as confirmed until these in-game checks pass.
