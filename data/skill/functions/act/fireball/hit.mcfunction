#死亡時 AoE増加、範囲HIT
tag @s[tag=AreaTarget] remove SingleTarget
tag @s[tag=Kill,tag=SingleTarget] add AreaTarget
scoreboard players operation @s[tag=AreaTarget,tag=SingleTarget] Rng = @s RngIncP
execute if entity @s[tag=AreaTarget,tag=SingleTarget] run function skill:calc/tick/main
