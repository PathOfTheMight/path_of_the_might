scoreboard players operation @s Rng = @s Radius
particle minecraft:explosion ~ ~1 ~ 1 1 1 0 0 force
particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 5 force
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 0.5 1.8
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 0.5 1.6
#周りに連鎖
scoreboard players operation #ID Number = @s ID
execute as @e[tag=StormCall,distance=..12] if score @s ID = #ID Number run scoreboard players set @s Dur 0