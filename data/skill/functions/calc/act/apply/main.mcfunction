###Atk
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Attack]}}}} run function skill:calc/act/apply/attack
###Spl
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Spell]}}}} run function skill:calc/act/apply/spell
###Proj
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Projectile]}}}} run function skill:calc/act/apply/projectile
###SingleTarget
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[SingleTarget]}}}} run function skill:calc/act/apply/single
###Area
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Area]}}}} run function skill:calc/act/apply/range
###Dur
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Duration]}}}} run function skill:calc/act/apply/duration

###RngExp
scoreboard players operation @s RngExp = #Temp RngExp
#Team
execute unless score #Temp Number matches 1 run tag @s add SkillP
execute if score #Temp Number matches 1 run tag @s add SkillE
