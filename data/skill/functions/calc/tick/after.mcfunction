execute if entity @s[tag=Fireball,tag=Kill] run function skill:act/fireball/hit
execute if entity @s[tag=FireNova] run scoreboard players operation @s Radius += @s RngIncP
execute if entity @s[tag=IceNova] run scoreboard players operation @s Radius += @s RngIncP
execute if entity @s[tag=StormCall2] run tp @s ~ ~-1 ~
