tp @s ^0.2 ^-0.2 ^0.5 ~ 0
scoreboard players operation @s Dur = #Temp WaitTimeH
scoreboard players operation @s Dur > #1000 Number

scoreboard players set @s Number 1500000
scoreboard players operation @s Number /= @s Dur

scoreboard players operation @s Dur /= #100 Number

function skill:calc/act/apply/main

scoreboard players set @s Rng 200

tag @s remove New
