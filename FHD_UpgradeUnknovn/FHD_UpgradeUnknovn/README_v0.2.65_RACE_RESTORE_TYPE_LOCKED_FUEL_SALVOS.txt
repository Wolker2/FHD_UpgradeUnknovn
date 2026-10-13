FHD_UpgradeUnknovn v0.2.65 — TYPE-LOCKED FUEL / SALVOS + SB MM RACE RESTORE

Base: v0.2.64 TYPE-LOCKED FUEL / SALVOS.

Changes in v0.2.65:
- Preserves v0.2.64 direct per-item fuel capacity: «Объём бака» is generated only on fuel tanks and changes the tank Capacity once.
- Preserves v0.2.64 direct per-item missile salvos: «Количество залпов» is generated only on missile weapons and changes WeaponMaxAmmunition once.
- Old global per-turn SyncFuelCapacity/SyncAmmo calls remain disabled.
- Restores the native v0.2.63 race-compatibility hooks for ordinary micromodules on researched SB equipment.
- Race restrictions are ignored only for researched equipment with a real SB grade; equipment/MM type checks, weapon-class checks, grade restrictions, duplicate protection and the two-MM limit remain intact.
- ModuleInfo description corrected to document the fuel/salvo type locks and restored race compatibility.

Native hook target remains the verified x86 Rangers.exe 2.1.2500 build used by v0.2.63.
