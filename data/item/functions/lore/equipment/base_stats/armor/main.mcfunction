scoreboard players set #Armor Number 0
scoreboard players set #Evasion Number 0
scoreboard players set #EnergyShield Number 0

#Armor
execute if data block -40691 2 -40700 RecordItem.tag.BaseStats.Armor run function item:lore/equipment/base_stats/armor/armor/main
#Evasion
execute if data block -40691 2 -40700 RecordItem.tag.BaseStats.Evasion run function item:lore/equipment/base_stats/armor/evasion/main
#EnergyShield
execute if data block -40691 2 -40700 RecordItem.tag.BaseStats.EnergyShield run function item:lore/equipment/base_stats/armor/energy_shield/main
#Lore
execute if score #Armor Number matches 1.. if score #Evasion Number matches 0 if score #EnergyShield Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"アーマー: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"red","bold":false,"italic":false}]'
execute if score #Armor Number matches 0 if score #Evasion Number matches 1.. if score #EnergyShield Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"エヴァージョン: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"green","bold":false,"italic":false}]'
execute if score #Armor Number matches 0 if score #Evasion Number matches 0 if score #EnergyShield Number matches 1.. run data modify block -40692 1 -40700 Text1 set value '[{"text":"エナジーシールド: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"aqua","bold":false,"italic":false}]'
execute if score #Armor Number matches 1.. if score #Evasion Number matches 1.. if score #EnergyShield Number matches 0 run data modify block -40692 1 -40700 Text1 set value '[{"text":"アーマー: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"red","bold":false,"italic":false},{"text":"  エヴァージョン: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"green","bold":false,"italic":false}]'
execute if score #Armor Number matches 1.. if score #Evasion Number matches 0 if score #EnergyShield Number matches 1.. run data modify block -40692 1 -40700 Text1 set value '[{"text":"アーマー: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"red","bold":false,"italic":false},{"text":"  エナジーシールド: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"aqua","bold":false,"italic":false}]'
execute if score #Armor Number matches 0 if score #Evasion Number matches 1.. if score #EnergyShield Number matches 1.. run data modify block -40692 1 -40700 Text1 set value '[{"text":"エヴァージョン: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"green","bold":false,"italic":false},{"text":"  エナジーシールド: ","color":"gray","bold":true,"italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"aqua","bold":false,"italic":false}]'

data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
