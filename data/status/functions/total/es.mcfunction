#max es
#add
scoreboard players operation @s MaxEs = @s PMaxEs
scoreboard players operation @s MaxEs += @s EMaxEs
#inc
scoreboard players set #MaxEsIncP Number 100
scoreboard players operation #MaxEsIncP Number += @s PMaxEsIncP
scoreboard players operation #MaxEsIncP Number += @s EMaxEsIncP
#total
scoreboard players operation @s MaxEs *= #MaxEsIncP Number
scoreboard players operation @s MaxEs /= #100 Number
