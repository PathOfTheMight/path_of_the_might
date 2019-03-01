#max es
#add
scoreboard players operation @s MaxEsH = @s PMaxEsH
scoreboard players operation @s MaxEsH += @s EMaxEsH
#inc
scoreboard players set #MaxEsIncP Number 100
scoreboard players operation #MaxEsIncP Number += @s PMaxEsIncP
scoreboard players operation #MaxEsIncP Number += @s EMaxEsIncP
#total
scoreboard players operation @s MaxEsH *= #MaxEsIncP Number
scoreboard players operation @s MaxEsH /= #100 Number
