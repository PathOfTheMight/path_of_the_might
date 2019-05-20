execute if entity @s[tag=KillOnFin] run tag @s add Kill
execute if entity @s[tag=LeaveOnFin] run tag @s remove Skill
scoreboard players reset @e[scores={RngFlag=2},distance=..21] RngFlag
