FHD_UpgradeUnknovn v0.2.83 — MM ICON / MECHANICS ISOLATED

Основа: рабочая по отображению микромодулей v0.2.77 MM_ICON_CLEANUP.

Что изменено:
- FHDUUMMIcons.XenoPlugin.dll из v0.2.77 НЕ ИЗМЕНЁН.
- FHDUUArtCompat.XenoPlugin.dll из v0.2.77 НЕ ИЗМЕНЁН.
- FHDUUMMText.XenoPlugin.dll из v0.2.77 НЕ ИЗМЕНЁН.
- добавлен отдельный FHDUUMMMechanics.XenoPlugin.dll.

Назначение FHDUUMMMechanics:
- реальные TEquipment.FBonus (+0x50) и TEquipment.FSpecial (+0x54) не меняются;
- первый MM остаётся доступен отрисовке через FSpecial;
- второй MM остаётся доступен штатной отрисовке через FBonus;
- при числовом расчёте характеристик создаётся временная копия TEquipment;
- только в этой временной копии ordinary-MM из FSpecial скрывается от ванильной
  ветки Special-MM, чтобы его поля не применялись как глобальные ко всем типам
  оборудования;
- после расчёта временная копия уничтожается, реальный предмет не меняется.

Идея:
ОТОБРАЖЕНИЕ: реальные FBonus/FSpecial -> v0.2.77 icons.
МЕХАНИКА: временный shadow TEquipment -> vanilla numeric getters.

Rangers.exe: рассчитано на 2.1.2500.
Runtime-проверка в игре всё ещё обязательна.
