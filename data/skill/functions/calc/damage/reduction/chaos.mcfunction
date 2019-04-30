scoreboard players set #ChDRed Number 100
scoreboard players operation #ChDRed Number += #ChPene Number
scoreboard players operation #ChDRed Number -= @s ChRes
scoreboard players operation #Temp ChD *= #ChDRed Number
execute unless entity @s[type=minecraft:player] run scoreboard players operation #Temp ChD /= #100 Number

function skill:calc/damage/apply/chaos
