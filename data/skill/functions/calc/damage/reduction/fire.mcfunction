scoreboard players set #FiDRed Number 100
scoreboard players operation #FiDRed Number += #FiPene Number
scoreboard players operation #FiDRed Number -= @s FiRes
scoreboard players operation #Temp FiD *= #FiDRed Number
scoreboard players operation #Temp FiD /= #100 Number

function skill:calc/damage/apply/fire
