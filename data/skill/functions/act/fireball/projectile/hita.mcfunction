#死亡時 AoE増加、範囲HIT
execute if entity @s[tag=SkillP] run data modify block -40691 1 -40700 RecordItem set from entity @s ArmorItems[0]
execute if entity @s[tag=SkillP] run function skill:calc/act/main

execute if entity @s[tag=SkillE] run scoreboard players reset #Temp
execute if entity @s[tag=SkillE] run scoreboard players operation #ID Number = @s ID
execute if entity @s[tag=SkillE] run scoreboard players operation * ID -= #ID Number
execute if entity @s[tag=SkillE] as @e[scores={ID=0},tag=Enemy] run function skill:act/fireball/explosion/act0
execute if entity @s[tag=SkillE] run scoreboard players operation * ID += #ID Number
 