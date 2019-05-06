#WaitTimeH = base/1+cast_speed_inc
scoreboard players add #Temp CasSpdIncP 100

scoreboard players operation #Temp WaitTimeH *= #100 Number
scoreboard players operation #Temp WaitTimeH /= #Temp CasSpdIncP
