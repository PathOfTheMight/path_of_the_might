#particle minecraft:flame ~ ~-1 ~ 0.1 0.1 0.1 0.005 1 force
execute if entity @s[tag=Kill] run particle minecraft:flame ~ ~-1 ~ 0 0.2 0 0.2 20 force
execute if entity @s[tag=Kill] run playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~-1 ~ 0.7 1 0.05
