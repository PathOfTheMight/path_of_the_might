###Damage Roll
execute if score #PhDMin Number matches 1.. run function skill:calc/act/damage_roll/physical
execute if score #FiDMin Number matches 1.. run function skill:calc/act/damage_roll/fire
execute if score #CoDMin Number matches 1.. run function skill:calc/act/damage_roll/cold
execute if score #LnDMin Number matches 1.. run function skill:calc/act/damage_roll/lightning
execute if score #ChDMin Number matches 1.. run function skill:calc/act/damage_roll/chaos
