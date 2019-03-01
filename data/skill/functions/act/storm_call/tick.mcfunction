#StormCall1 待機中
execute if entity @s[tag=StormCall1] if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
#Dur=1で落雷
execute as @s[tag=StormCall1,scores={Dur=25}] run function skill:act/storm_call/act3

#StormCall2 雷
execute if entity @s[tag=StormCall2,scores={RngFlag=1},tag=SkillP] run function skill:calc/range/hit/player
execute if entity @s[tag=StormCall2,scores={RngFlag=1},tag=SkillE] run function skill:calc/range/hit/enemy

execute if entity @s[tag=StormCall2] run particle minecraft:dust 0 1000000 50000000 1.5 ~ ~ ~ 0.5 0.5 0.5 1 3 force
execute if entity @s[tag=StormCall2] positioned ~ ~-1 ~ if entity @e[tag=StormCall1,distance=..1,scores={Dur=1..},limit=1] run function skill:act/storm_call/expire
