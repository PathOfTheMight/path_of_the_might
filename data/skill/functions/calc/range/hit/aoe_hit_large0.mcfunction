#sizeの最大値は500
tag @s add AoE_large_calc
scoreboard players operation #AoE Number = @s AoE

execute if entity @s[tag=SkillP] as @e[scores={size=1..},tag=Enemy,distance=..20] positioned as @s run function skill:calc/aoe/hit/large1
execute if entity @s[tag=SKillE] as @e[scores={size=1..},tag=Player,distance=..20] positioned as @s run function skill:calc/aoe/hit/large1

tag @s remove AoE_large_calc
