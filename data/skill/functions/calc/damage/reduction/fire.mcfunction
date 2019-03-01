scoreboard players operation #FiD Number = #BaseFiD Number
scoreboard players set #FiDRed Number 100
scoreboard players operation #FiDRed Number += #FiPene Number
scoreboard players operation #FiDRed Number -= @s FiRes
scoreboard players operation #FiD Number *= #FiDRed Number

function skill:calc/damage/apply/fire
