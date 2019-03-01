#復帰座標取得
execute store result score #GenerateX0 Number run data get entity @s Pos[0]
execute store result score #GenerateY0 Number run data get entity @s Pos[1]
execute store result score #GenerateZ0 Number run data get entity @s Pos[2]

effect give @s minecraft:levitation 100 255 true
tp @s ~ 0 ~
#Map生成
function map:load/tp_init
scoreboard players set #GenerateTick Number 1
tag @s add GenerateMap
#MapPattern更新
scoreboard players set #RandMod Number 10
function main:rand
scoreboard players operation #MapPattern Number = #RandMod Number
#Mapパラメータ更新
function map:load/status/get_level/main
