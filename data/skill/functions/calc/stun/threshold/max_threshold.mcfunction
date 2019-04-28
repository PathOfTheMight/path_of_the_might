scoreboard players operation #Nomer Number = #Temp RedStnThold
scoreboard players operation #Denom Number = #Temp RedStnThold
scoreboard players remove #Nomer Number 75
scoreboard players remove #Denom Number 50

scoreboard players set #StnThold Number -25
scoreboard players operation #StnThold Number *= #Nomer Number
scoreboard players operation #StnThold Number /= #Denom Number
scoreboard players add #StnThold Number 25
