###Damage Roll
execute if score #Temp PhDMin matches 1.. run function skill:calc/act/damage/roll/physical
execute if score #Temp FiDMin matches 1.. run function skill:calc/act/damage/roll/fire
execute if score #Temp CoDMin matches 1.. run function skill:calc/act/damage/roll/cold
execute if score #Temp LnDMin matches 1.. run function skill:calc/act/damage/roll/lightning
execute if score #Temp ChDMin matches 1.. run function skill:calc/act/damage/roll/chaos

execute if score #Damage Number matches 1 run tellraw @a ["",{"text":"Ph"},{"score":{"name":"#Temp","objective":"PhD"}},{"text":" Fi","color":"red"},{"score":{"name":"#Temp","objective":"FiD"},"color":"red"},{"text":" Co","color":"aqua"},{"score":{"name":"#Temp","objective":"CoD"},"color":"aqua"},{"text":" Ln","color":"yellow"},{"score":{"name":"#Temp","objective":"LnD"},"color":"yellow"},{"text":" Ch","color":"light_purple"},{"score":{"name":"#Temp","objective":"ChD"},"color":"light_purple"}]
