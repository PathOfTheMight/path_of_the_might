#死亡時 AoE増加、範囲HIT
tag @s[tag=Area] remove Single
tag @s[tag=Kill,tag=Single] add Area
scoreboard players operation @s[tag=Area,tag=Single] Rng = @s RngIncP
execute if entity @s[tag=Area,tag=Single] run function skill:calc/tick/main
