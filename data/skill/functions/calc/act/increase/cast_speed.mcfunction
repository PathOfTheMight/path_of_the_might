#WaitTimeH = base/1+cast_speed_inc
scoreboard players set #CasSpdIncP Number 100
scoreboard players operation #CasSpdIncP Number += @s CasSpdIncP

scoreboard players operation #WaitTimeH Number *= #100 Number
scoreboard players operation #WaitTimeH Number /= #CasSpdIncP Number
