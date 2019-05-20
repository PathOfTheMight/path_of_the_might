tp @s ^ ^0.5 ^0.5 ~ ~

function skill:calc/act/apply/main
#Pier
scoreboard players set @s Pier -1
#Fork
scoreboard players set @s Fork 0
#Chai
scoreboard players operation @s Chai = #Chai Number
scoreboard players add @s Chai 7
#Dur
scoreboard players set @s Dur 20
#Rng
scoreboard players set @s Rng 220
#ProjSpd
scoreboard players set @s ProjSpd 150

tag @s remove New
