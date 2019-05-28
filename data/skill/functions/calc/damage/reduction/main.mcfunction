tag @s add Damaged
execute if score #Temp PhD matches 1.. run function skill:calc/damage/reduction/physical
execute if score #Temp FiD matches 1.. run function skill:calc/damage/reduction/fire
execute if score #Temp CoD matches 1.. run function skill:calc/damage/reduction/cold
execute if score #Temp LnD matches 1.. run function skill:calc/damage/reduction/lightning
execute if score #Temp ChD matches 1.. run function skill:calc/damage/reduction/chaos

execute if score #DebugHp Number matches 1 run tellraw @a [{"text":"Hp"},{"score":{"name":"@s","objective":"Hp"}}]
#stun
execute unless entity @s[type=minecraft:player] run function skill:calc/stun/check
