execute if entity @s[scores={DodAtkP=1..}] run function skill:calc/dodge/attack/main
execute unless entity @s[scores={DodAtkP=1..}] run function skill:calc/block/attack/check
