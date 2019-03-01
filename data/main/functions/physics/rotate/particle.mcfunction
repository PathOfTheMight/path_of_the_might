execute if entity @s[tag=StormCall] run particle minecraft:dust 0 1000000 50000000 1.5 ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=FireNova] run particle minecraft:flame ~ ~0.2 ~ 1 0.1 1 0.01 15 force
execute if entity @s[tag=IceNova] run particle minecraft:dust 0.4 1 100000000 1.5 ~ ~0.2 ~ 1 0.1 1 0.01 10 force
execute if entity @s[tag=ShockNova1] run particle minecraft:dust 1.1 1 0 1.5 ~ ~0.35 ~ 0.3 0.1 0.3 0.01 5 force
execute if entity @s[tag=ShockNova2,scores={Dur=..7}] run particle minecraft:dust 10000000 100000000 -0.6 1.5 ~ ~0.1 ~ 2 0.1 2 0.01 5 force
execute if entity @s[tag=Portal] run particle minecraft:witch ~ ~ ~ 0 0 0 0 0 force
