#復帰座標取得
execute store result score #GenerateX Number run data get entity @s Pos[0] 1
execute store result score #GenerateY Number run data get entity @s Pos[1] 1
execute store result score #GenerateZ Number run data get entity @s Pos[2] 1
#Map生成
effect give @s minecraft:levitation 100 255 true
execute positioned ~ 255 ~ run function map:load/tp_init
scoreboard players set #GenerateTick Number 1
tag @s add GenerateMap
kill 0-0-1-0-1
#MapPattern更新
scoreboard players set #RandMod Number 10
function main:rand
scoreboard players operation #MapPattern Number = #RandMod Number
#Mapパラメータ更新
function map:load/status/get_level/main
