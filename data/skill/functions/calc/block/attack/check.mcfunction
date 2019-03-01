execute if entity @s[scores={BloAtkP=1..}] run function skill:calc/block/attack/main
execute unless entity @s[scores={BloAtkP=1..}] run function skill:calc/damage/reduction/main
