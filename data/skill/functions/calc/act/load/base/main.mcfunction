#基本をロード
###Atk
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Attack]}}}} run function skill:calc/act/load/base/attack
###Spl
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Spell]}}}} run function skill:calc/act/load/base/spell
###Proj
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Projectile]}}}} run function skill:calc/act/load/base/projectile
###SingleTarget
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[SingleTarget]}}}} run function skill:calc/act/load/base/single
###Area
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Area]}}}} run function skill:calc/act/load/base/range
###Dur
execute if data block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Duration]}}}} run function skill:calc/act/load/base/duration
#Team
#execute unless entity @s[tag=Player] run scoreboard players set #Temp Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Temp Number 1

###RngExp
execute if score #Temp Mult matches 1.. run function skill:calc/range/set_exp/act
execute unless score #Temp Mult matches 1.. run scoreboard players set #Temp RngExp -1
