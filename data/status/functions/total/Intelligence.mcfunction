#Int
scoreboard players operation @s Int = @s BInt
scoreboard players operation @s Int += @s PInt
scoreboard players operation @s Int += @s EInt
#IntIncP
scoreboard players operation #IntIncP Number = @s PIntIncP
scoreboard players operation #IntIncP Number += @s EIntIncP
scoreboard players operation #IntIncP Number += #100 Number
scoreboard players operation @s Int *= #IntIncP Number
scoreboard players operation @s Int /= #100 Number
