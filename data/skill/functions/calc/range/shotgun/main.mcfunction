scoreboard players operation #ShotgunBefore Number = #Shotgun Number
scoreboard players operation #Shotgun Number = @s Shotgun
execute if entity @s[tag=SkillP] run function skill:calc/range/shotgun/player/main
execute if entity @s[tag=SkillE] run function skill:calc/range/shotgun/enemy/main
