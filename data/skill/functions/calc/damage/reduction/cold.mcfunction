scoreboard players set #CoDRed Number 100
scoreboard players operation #CoDRed Number += #CoPene Number
scoreboard players operation #CoDRed Number -= @s CoRes
scoreboard players operation #Temp CoD *= #CoDRed Number
execute unless entity @s[type=minecraft:player] run scoreboard players operation #Temp CoD /= #100 Number

function skill:calc/damage/apply/cold
