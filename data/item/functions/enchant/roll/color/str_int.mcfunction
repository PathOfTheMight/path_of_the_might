#For dual-requirement items, on-color: 0.9 * R1 / (R1 + R2)
#For dual-requirement items, off-color: 10% flat chance, regardless of requirements

scoreboard players set #Thold1 Number 900000
scoreboard players operation #Thold1 Number *= #Str Number
scoreboard players operation #Str Number += #Int Number
scoreboard players operation #Thold1 Number /= #Str Number

scoreboard players operation #Thold2 Number = #Thold1 Number
scoreboard players add #Thold2 Number 100000
