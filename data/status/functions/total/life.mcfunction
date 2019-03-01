#max Hp
scoreboard players operation @s MaxHpH = @s BMaxHpH
scoreboard players operation @s MaxHpH += @s PMaxHpH
scoreboard players operation @s MaxHpH += @s EMaxHpH

scoreboard players set #MaxHpIncP Number 100
scoreboard players operation #MaxHpIncP Number += @s PMaxHpIncP
scoreboard players operation #MaxHpIncP Number += @s EMaxHpIncP

scoreboard players operation @s MaxHpH *= #MaxHpIncP Number
scoreboard players operation @s MaxHpH /= #100 Number
