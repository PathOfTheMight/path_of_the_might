execute if entity @s[tag=!UpdateExp] run function skill:calc/range/set_exp/act
scoreboard players operation #Temp ID = @s ID
execute if entity @s[tag=!UpdateExp] as @e[tag=Spark,tag=!UpdateExp,distance=..21] if score #Temp ID = @s ID run function skill:act/spark/update_exp1
