#max & non-reserve mana
#add
scoreboard players operation @s MaxMpH = @s BMaxMpH
scoreboard players operation @s MaxMpH += @s PMaxMpH
scoreboard players operation @s MaxMpH += @s EMaxMpH
#inc
scoreboard players set #MaxMpIncP Number 100
scoreboard players operation #MaxMpIncP Number += @s PMaxMpIncP
scoreboard players operation #MaxMpIncP Number += @s EMaxMpIncP
#total
scoreboard players operation @s MaxMpH *= #MaxMpIncP Number
scoreboard players operation @s MaxMpH /= #100 Number
#non-reserve %
scoreboard players set #NonRsrMpHP Number 10000
scoreboard players operation #NonRsrMpHP Number -= @s TRsrMpHP
#non-reserve
scoreboard players operation @s NonRsrMpH = @s MaxMpH
scoreboard players operation @s NonRsrMpH *= #NonRsrMpHP Number
scoreboard players operation @s NonRsrMpH /= #10000 Number
