#WaitTimeH = base/1+attack_speed_inc
scoreboard players add #Temp AtkSpdIncP 100

scoreboard players operation #Temp WaitTimeH *= #100 Number
scoreboard players operation #Temp WaitTimeH /= #Temp AtkSpdIncP
