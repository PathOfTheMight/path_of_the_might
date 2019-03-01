#WaitTimeH = base/1+cast_speed_inc
scoreboard players set #TAtkSpdIncP Number 100
scoreboard players operation #TAtkSpdIncP Number += @s TAtkSpdIncP

scoreboard players operation #WaitTimeH Number *= #100 Number
scoreboard players operation #WaitTimeH Number /= #TAtkSpdIncP Number
