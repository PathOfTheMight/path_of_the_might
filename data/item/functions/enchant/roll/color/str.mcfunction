#For mono-requirement items, on-color: 0.9 * (R + 10) / (R + 20)
#For mono-requirement items, off-color: 0.05 + 4.5 / (R + 20)

scoreboard players set #Thold1 Number 900000
scoreboard players add #Str Number 10
scoreboard players operation #Thold1 Number *= #Str Number
scoreboard players add #Str Number 10
scoreboard players operation #Thold1 Number /= #Str Number

scoreboard players set #Thold2 Number 1000000
scoreboard players operation #Thold2 Number -= #Thold1 Number
scoreboard players operation #Thold2 Number /= #2 Number
scoreboard players operation #Thold2 Number += #Thold1 Number
