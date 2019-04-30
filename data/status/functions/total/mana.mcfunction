#max & non-reserve mana
#add
scoreboard players operation @s MaxMp = @s BMaxMp
scoreboard players operation @s MaxMp += @s PMaxMp
scoreboard players operation @s MaxMp += @s EMaxMp
#inc
scoreboard players set #MaxMpIncP Number 100
scoreboard players operation #MaxMpIncP Number += @s PMaxMpIncP
scoreboard players operation #MaxMpIncP Number += @s EMaxMpIncP
#total
scoreboard players operation @s MaxMp *= #MaxMpIncP Number
scoreboard players operation @s MaxMp /= #100 Number
#non-reserve %
scoreboard players set #NonRsrMpP Number 10000
scoreboard players operation #NonRsrMpP Number -= @s TRsrMpP
#non-reserve
scoreboard players operation @s NonRsrMp = @s MaxMp
scoreboard players operation @s NonRsrMp *= #NonRsrMpP Number
scoreboard players operation @s NonRsrMp /= #10000 Number
