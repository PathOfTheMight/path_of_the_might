scoreboard players operation #Dur Number = @s Dur
scoreboard players operation #Dur Number %= #13 Number
execute if score #Dur Number matches 0 run function skill:act/spark/update_exp0
execute if score #Dur Number matches 1 run tag @s remove UpdateExp
