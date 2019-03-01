execute as @e[tag=SkillP,distance=0.1..20] if score @s Shotgun = #Shotgun Number run tag @s add Shotgun
execute if score #Shotgun Number = #ShotgunBefore Number run function skill:calc/range/shotgun/player/allocate
tag @e[tag=Shotgun] remove Shotgun