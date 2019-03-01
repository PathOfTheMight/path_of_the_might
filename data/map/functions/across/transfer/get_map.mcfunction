#座標からmap算出
#Map=(Z/4096+10)*21+X/4096+10
#   =Z/195+X/4096+220
execute store result score #X0 Number run data get entity @s Pos[0] 1
execute store result score #Z0 Number run data get entity @s Pos[2] 1

scoreboard players operation #Map Number = @s map

scoreboard players operation #Z0 Number /= #195 Number
scoreboard players operation #X0 Number /= #4096 Number
scoreboard players operation @s map = #Z0 Number
scoreboard players operation @s map += #X0 Number
scoreboard players add @s map 220

execute unless score #Map Number = @s map run function map:load/tellraw/allocate/main
