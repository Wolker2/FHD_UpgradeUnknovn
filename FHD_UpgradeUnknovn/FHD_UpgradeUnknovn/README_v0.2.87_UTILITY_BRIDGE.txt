FHD_UpgradeUnknovn v0.2.87 - UTILITY BRIDGE (NORMAL)

Нативная логика v0.2.87 перенесена из Xeno-загрузки в штатный ScriptLibs-механизм игры по архитектуре UtilityFunctionsPack.
XenoCore/XenoNativeLoader для этого мода не требуется.

Устанавливайте ОБЕ папки из архива:
1. FHD_UpgradeUnknovn
2. FHD_UpgradeUnknovn_UtilityBridge

Не возвращайте папку Native из старой Xeno-сборки: иначе одни и те же хуки могут попытаться установиться дважды.

Вспомогательный FHDUUScriptLibsBridge.dll сам определяет свою папку, через ntdll/LdrLoadDll загружает четыре исходных модуля v0.2.87 и передаёт им Host API V1. Поэтому исходная механика двух обычных ММ, второй значок, MMMechanics и MMText сохраняется без Xeno loader.
