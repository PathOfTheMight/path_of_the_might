scoreboard players set #LnDRed Number 100
scoreboard players operation #LnDRed Number += #LnPene Number
scoreboard players operation #LnDRed Number -= @s LnRes
scoreboard players operation #Temp LnD *= #LnDRed Number
scoreboard players operation #Temp LnD /= #100 Number

function skill:calc/damage/apply/lightning
