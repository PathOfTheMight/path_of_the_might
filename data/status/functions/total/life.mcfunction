#max Hp
scoreboard players operation @s MaxHp = @s BMaxHp
scoreboard players operation @s MaxHp += @s PMaxHp
scoreboard players operation @s MaxHp += @s EMaxHp

scoreboard players set #MaxHpIncP Number 100
scoreboard players operation #MaxHpIncP Number += @s PMaxHpIncP
scoreboard players operation #MaxHpIncP Number += @s EMaxHpIncP

scoreboard players operation @s MaxHp *= #MaxHpIncP Number
scoreboard players operation @s MaxHp /= #100 Number
