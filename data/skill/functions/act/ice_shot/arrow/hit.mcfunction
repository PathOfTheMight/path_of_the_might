execute if entity @s[tag=SkillP] run data modify block -40691 1 -40700 RecordItem set from entity @s ArmorItems[0]
execute if entity @s[tag=SkillP] run function skill:calc/act/main
execute if entity @s[tag=SkillE] run function skill:act/ice_shot/ice/act0
