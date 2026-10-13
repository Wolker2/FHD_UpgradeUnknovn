v0.2.55
- Исправлен Compiler. Error=0,651 в SyncFuelCapacity.
- Причина: повторное объявление локальных переменных old/cap/fuel в плоской области видимости RScript.
- Временные переменные разделены на old_stored/old_cap/old_fuel и tank_stored/tank_base/tank_add/tank_cap/tank_fuel.
- Механика СБ и расчёт физического Capacity топливного бака не менялись.
