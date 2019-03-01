#sizeの最大値は500
tag @s add AoE_large_calc
scoreboard players operation #AoE Number = @s AoE
scoreboard players operation #ShotgunTemp Number = @s Shotgun

execute if entity @s[tag=SkillP] as @e[scores={size=1..,RngFlag=3},tag=Enemy] positioned as @s run function skill:calc/shotgun/large1
execute if entity @s[tag=SkillE] as @e[scores={size=1..,RngFlag=3},tag=Player] positioned as @s run function skill:calc/shotgun/large1

tag @s remove AoE_large_calc
