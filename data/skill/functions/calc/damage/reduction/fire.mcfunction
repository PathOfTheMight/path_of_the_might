scoreboard players set #FiDRed Number 100
scoreboard players operation #FiDRed Number += #FiPene Number
scoreboard players operation #FiDRed Number -= @s FiRes
scoreboard players operation #Temp FiD *= #FiDRed Number
execute unless entity @s[type=minecraft:player] run scoreboard players operation #Temp FiD /= #100 Number

function skill:calc/damage/apply/fire
