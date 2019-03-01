#重力補正
execute store result score @s X0 run data get entity @s Pos[0] 100
execute store result score @s Y0 run data get entity @s Pos[1] 100
execute store result score @s Z0 run data get entity @s Pos[2] 100
scoreboard players operation @s X1 = @s X0
scoreboard players operation @s Y1 = @s Y0
scoreboard players operation @s Z1 = @s Z0
scoreboard players operation @s X1 -= @s X2
scoreboard players operation @s Y1 -= @s Y2
scoreboard players operation @s Z1 -= @s Z2