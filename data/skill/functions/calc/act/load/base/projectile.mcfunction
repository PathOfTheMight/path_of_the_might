scoreboard players operation #Temp OthDIncP += @s ProjDIncP
scoreboard players operation #Temp ProjSpdIncP += @s ProjSpdIncP
function skill:calc/act/increase/projectile_speed
scoreboard players operation #Temp Mult += @s Mult
execute if score #Temp Mult matches 1.. run function skill:calc/shotgun/main
scoreboard players operation #Temp Pier += @s Pier
scoreboard players operation #Temp Fork += @s Fork
scoreboard players operation #Temp Chai += @s Chai
