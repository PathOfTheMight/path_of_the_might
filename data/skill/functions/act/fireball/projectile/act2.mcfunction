#アイテム保存
data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{SkillID:21001,Cost:0,WaitTimeH:0}}}}
data modify entity @s ArmorItems[0] set from block -40691 1 -40700 RecordItem
#Dur
scoreboard players set @s Dur 50

function skill:calc/act/apply/main

#Rng
scoreboard players set @s Rng 10

tag @s remove New
