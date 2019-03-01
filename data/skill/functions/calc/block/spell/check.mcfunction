execute if entity @s[scores={BloSplP=1..}] run function skill:calc/block/spell/main
execute unless entity @s[scores={BloSplP=1..}] run function skill:calc/damage/reduction/main
