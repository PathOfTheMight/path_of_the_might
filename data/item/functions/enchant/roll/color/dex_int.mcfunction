#For dual-requirement items, on-color: 0.9 * R1 / (R1 + R2)
#For dual-requirement items, off-color: 10% flat chance, regardless of requirements

scoreboard players set #Thold2 Number 900000
scoreboard players operation #Thold2 Number *= #Dex Number
scoreboard players operation #Dex Number += #Int Number
scoreboard players operation #Thold2 Number /= #Dex Number

scoreboard players set #Thold1 Number 100000
scoreboard players add #Thold2 Number 100000
