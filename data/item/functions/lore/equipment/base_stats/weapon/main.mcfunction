execute store result score #BasePhDMin Number store result score #PhDMin Number run data get storage item: Item.tag.BaseStats.PhysicalDamageMin.Base 1
execute store result score #BasePhDMax Number store result score #PhDMax Number run data get storage item: Item.tag.BaseStats.PhysicalDamageMax.Base 1
execute store result score #BaseCriP Number store result score #CriP Number run data get storage item: Item.tag.BaseStats.CriticalStrikeChance.Base 100
execute store result score #BaseAtkSpd Number store result score #AtkSpd Number run data get storage item: Item.tag.BaseStats.AttackSpeed.Base 100
#execute store result score #WeaponRange Number run data get storage item: Item.tag.BaseStats.WeaponRange 1

#AddPhysicalLocalDamage
execute if data storage item: Item.tag.Prefix[{ID:"AddPhysicalLocalDamage"}] run function item:lore/equipment/base_stats/weapon/add_physical_local_damage
#IncPhysicalLocalDamage
scoreboard players set #PhDIncP Number 100
execute if data storage item: Item.tag.Prefix[{ID:"IncPhysicalLocalDamage"}] run function item:lore/equipment/base_stats/weapon/inc_physical_local_damage
execute if data storage item: Item.tag.Prefix[{ID:"IncPhysicalLocalDamage_Accuracy"}] run function item:lore/equipment/base_stats/weapon/inc_physical_local_damage_accuracy
scoreboard players operation #PhDMin Number *= #PhDIncP Number
scoreboard players operation #PhDMin Number /= #100 Number
scoreboard players operation #PhDMax Number *= #PhDIncP Number
scoreboard players operation #PhDMax Number /= #100 Number
#IncLocalCriticalStrikeChance
scoreboard players set #CriIncP Number 100
execute if data storage item: Item.tag.Suffix[{ID:"IncLocalCriticalStrikeChance"}] run function item:lore/equipment/base_stats/weapon/inc_local_critical_strike_chance
scoreboard players operation #CriP Number *= #CriIncP Number
scoreboard players operation #CriP Number /= #100 Number
scoreboard players operation #CriPInteger Number = #CriP Number
scoreboard players operation #CriPDecimal Number = #CriP Number
scoreboard players operation #CriPInteger Number /= #100 Number
scoreboard players operation #CriPDecimal Number %= #100 Number
#IncLocalAttackSpeed
scoreboard players set #AtkSpdIncP Number 100
execute if data storage item: Item.tag.Suffix[{ID:"IncLocalAttackSpeed"}] run function item:lore/equipment/base_stats/weapon/inc_local_attack_speed
scoreboard players operation #AtkSpd Number *= #AtkSpdIncP Number
scoreboard players operation #AtkSpd Number /= #100 Number
scoreboard players operation #AtkSpdInteger Number = #AtkSpd Number
scoreboard players operation #AtkSpdDecimal Number = #AtkSpd Number
scoreboard players operation #AtkSpdInteger Number /= #100 Number
scoreboard players operation #AtkSpdDecimal Number %= #100 Number
#save
execute store result storage item: Item.tag.BaseStats.PhysicalDamageMin.Total int 1 run scoreboard players get #PhDMin Number
execute store result storage item: Item.tag.BaseStats.PhysicalDamageMax.Total int 1 run scoreboard players get #PhDMax Number
execute store result storage item: Item.tag.BaseStats.CriticalStrikeChance.Total double 0.01 run scoreboard players get #CriP Number
execute store result storage item: Item.tag.BaseStats.AttackSpeed.Total double 0.01 run scoreboard players get #AtkSpd Number
#Lore
#PhysicalDamage
execute if score #PhDMin Number = #BasePhDMin Number run data modify block 2 4 2 Text1 set value '[{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false},{"translate":"%s-%s","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#PhDMin","objective":"Number"}},{"score":{"name":"#PhDMax","objective":"Number"}}]}]'
execute unless score #PhDMin Number = #BasePhDMin Number run data modify block 2 4 2 Text1 set value '[{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false},{"translate":"%s-%s","color":"aqua","bold":false,"italic":false,"with":[{"score":{"name":"#PhDMin","objective":"Number"}},{"score":{"name":"#PhDMax","objective":"Number"}}]}]'
data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
#ElementalDamage
data remove storage weapon_lore: WeaponLore
execute if data storage item: Item.tag.Prefix[{ID:"AddFireLocalDamage"}] run data modify storage weapon_lore: WeaponLore.Fire set value '{"translate":"%s-%s ","color":"red","bold":false,"italic":"false","with":[{"nbt":"Item.tag.Prefix[{ID:AddFireLocalDamage}].Value1","storage":"item:"},{"nbt":"Item.tag.Prefix[{ID:AddFireLocalDamage}].Value2","storage":"item:"}]}'
execute if data storage item: Item.tag.Prefix[{ID:"AddColdLocalDamage"}] run data modify storage weapon_lore: WeaponLore.Cold set value '{"translate":"%s-%s ","color":"blue","bold":false,"italic":"false","with":[{"nbt":"Item.tag.Prefix[{ID:AddColdLocalDamage}].Value1","storage":"item:"},{"nbt":"Item.tag.Prefix[{ID:AddColdLocalDamage}].Value2","storage":"item:"}]}'
execute if data storage item: Item.tag.Prefix[{ID:"AddLightningLocalDamage"}] run data modify storage weapon_lore: WeaponLore.Lightning set value '{"translate":"%s-%s ","color":"yellow","bold":false,"italic":"false","with":[{"nbt":"Item.tag.Prefix[{ID:AddLightningLocalDamage}].Value1","storage":"item:"},{"nbt":"Item.tag.Prefix[{ID:AddLightningLocalDamage}].Value2","storage":"item:"}]}'

execute if data storage weapon_lore: WeaponLore run data modify block 2 4 2 Text1 set value '[{"text":"属性ダメージ: ","color":"gray","bold":true,"italic":false},{"nbt":"WeaponLore.Fire","storage":"weapon_lore:","interpret":true},{"nbt":"WeaponLore.Cold","storage":"weapon_lore:","interpret":true},{"nbt":"WeaponLore.Lightning","storage":"weapon_lore:","interpret":true}]'
execute if data storage weapon_lore: WeaponLore run data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
#ChaosDamage
execute if score #ChDMin Number matches 1.. run data modify block 2 4 2 Text1 set value '[{"text":"混沌ダメージ: ","color":"gray","bold":true,"italic":false},{"translate":"%s-%s","color":"aqua","bold":false,"italic":false,"with":[{"score":{"name":"#ChDMin","objective":"Number"}},{"score":{"name":"#ChDMax","objective":"Number"}}]}]'
execute if score #ChDMin Number matches 1.. run data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
#Critical
execute if score #CriP Number = #BaseCriP Number run data modify block 2 4 2 Text1 set value '[{"text":"クリティカル発生率: ","color":"gray","bold":true,"italic":false},{"translate":"%s.%s%%","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#CriPInteger","objective":"Number"}},{"score":{"name":"#CriPDecimal","objective":"Number"}}]}]'
execute unless score #CriP Number = #BaseCriP Number run data modify block 2 4 2 Text1 set value '[{"text":"クリティカル発生率: ","color":"gray","bold":true,"italic":false},{"translate":"%s.%s%%","color":"aqua","bold":false,"italic":false,"with":[{"score":{"name":"#CriPInteger","objective":"Number"}},{"score":{"name":"#CriPDecimal","objective":"Number"}}]}]'
data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
#AttackSpeed
execute if score #AtkSpd Number = #BaseAtkSpd Number run data modify block 2 4 2 Text1 set value '[{"text":"攻撃速度: ","color":"gray","bold":true,"italic":false},{"translate":"%s.%s%%","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#AtkSpdInteger","objective":"Number"}},{"score":{"name":"#AtkSpdDecimal","objective":"Number"}}]}]'
execute unless score #AtkSpd Number = #BaseAtkSpd Number run data modify block 2 4 2 Text1 set value '[{"text":"攻撃速度: ","color":"gray","bold":true,"italic":false},{"translate":"%s.%s%%","color":"aqua","bold":false,"italic":false,"with":[{"score":{"name":"#AtkSpdInteger","objective":"Number"}},{"score":{"name":"#AtkSpdDecimal","objective":"Number"}}]}]'
data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
