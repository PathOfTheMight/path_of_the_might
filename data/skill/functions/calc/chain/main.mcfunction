scoreboard players remove @s Chai 1

execute if entity @s[tag=SkillP] run function skill:calc/chain/player/main
execute if entity @s[tag=SkillE] run function skill:calc/chain/enemy/main
