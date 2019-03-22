scoreboard players set #PhD Number 0
scoreboard players set #FiD Number 0
scoreboard players set #CoD Number 0
scoreboard players set #LnD Number 0
scoreboard players set #ChD Number 0

###Damage Roll
execute if score #PhDMin Number matches 1.. run function skill:calc/act/damage/roll/physical
execute if score #FiDMin Number matches 1.. run function skill:calc/act/damage/roll/fire
execute if score #CoDMin Number matches 1.. run function skill:calc/act/damage/roll/cold
execute if score #LnDMin Number matches 1.. run function skill:calc/act/damage/roll/lightning
execute if score #ChDMin Number matches 1.. run function skill:calc/act/damage/roll/chaos
