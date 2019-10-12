execute store result score #PhDMin Number run data get block -40691 2 -40700 RecordItem.tag.BaseStats.PhysicalDamageMin 1
execute store result score #PhDMax Number run data get block -40691 2 -40700 RecordItem.tag.BaseStats.PhysicalDamageMax 1
execute store result score #CriP Number run data get block -40691 2 -40700 RecordItem.tag.BaseStats.CriticalStrikeChance 1
execute store result score #WeaponRange Number run data get block -40691 2 -40700 RecordItem.tag.BaseStats.WeaponRange 1
#AddPhysicalLocalDamage
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"AddPhysicalLocalDamage"}] run function item:lore/equipment/base_stats/weapon/add_physical_local_damage
#IncPhysicalLocalDamage
scoreboard players set #PhDIncP Number 100
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncPhysicalLocalDamage"}] run function item:lore/equipment/base_stats/weapon/inc_physical_local_damage
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncPhysicalLocalDamage_Accuracy"}] run function item:lore/equipment/base_stats/weapon/inc_physical_local_damage_accuracy
scoreboard players operation #PhDMin Number *= #PhDIncP Number
scoreboard players operation #PhDMin Number /= #100 Number
scoreboard players operation #PhDMax Number *= #PhDIncP Number
scoreboard players operation #PhDMax Number /= #100 Number
#IncCriticalStrikeChance
scoreboard players set #CriIncP Number 100
execute if data block -40691 2 -40700 RecordItem.tag.Suffix[{Name:"IncLocalCriticalStrikeChance"}] run function item:lore/equipment/base_stats/weapon/inc_local_critical_strike_chance
scoreboard players operation #CriP Number *= #CriIncP Number
scoreboard players operation #CriP Number /= #100 Number
#Lore
data modify block -40692 1 -40700 Text1 set value '[{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#PhDMin","objective":"Number"},"color":"white","bold":false,"italic":false},{"text":"-","color":"white","bold":false,"italic":false},{"score":{"name":"#PhDMax","objective":"Number"},"color":"white","bold":false,"italic":false}]'
data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1

data modify block -40692 1 -40700 Text1 set value '[{"text":"クリティカル発生率: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#CriP","objective":"Number"},"color":"white","bold":false,"italic":false},{"text":"%","color":"white","bold":false,"italic":false}]'
data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
