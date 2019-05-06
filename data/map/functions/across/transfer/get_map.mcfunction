#座標からmap算出
#Map=(Z/4096+10)*21+X/4096+10

execute store result score #X0 Number run data get entity @s Pos[0] 1
execute store result score #Z0 Number run data get entity @s Pos[2] 1

scoreboard players add #X0 Number 64
scoreboard players add #Z0 Number 64

scoreboard players operation #X1 Number = #X0 Number
scoreboard players operation #Z1 Number = #Z0 Number
scoreboard players operation #X1 Number %= #4096 Number
scoreboard players operation #Z1 Number %= #4096 Number

scoreboard players operation #X0 Number -= #X1 Number
scoreboard players operation #Z0 Number -= #Z1 Number
scoreboard players operation #X0 Number /= #4096 Number
scoreboard players operation #Z0 Number /= #4096 Number

scoreboard players operation #Z0 Number *= #21 Number
scoreboard players set @s map 220
scoreboard players operation @s map += #X0 Number
scoreboard players operation @s map += #Z0 Number
