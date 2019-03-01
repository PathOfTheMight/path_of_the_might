#復帰座標にtp
execute positioned as @s run summon minecraft:arrow ~ ~ ~ {Tags:[WarpPoint],xTile:0,yTile:0,zTile:0}

#Pos代入
execute store result entity @e[tag=WarpPoint,limit=1] Pos[0] double 1 run scoreboard players get #GenerateX0 Number
execute store result entity @e[tag=WarpPoint,limit=1] Pos[1] double 1 run scoreboard players get #GenerateY0 Number
execute store result entity @e[tag=WarpPoint,limit=1] Pos[2] double 1 run scoreboard players get #GenerateZ0 Number
#Tile代入
scoreboard players operation #GenerateX0 Number /= #16 Number
scoreboard players operation #GenerateZ0 Number /= #16 Number
execute store result entity @e[tag=WarpPoint,limit=1] xTile int 1 run scoreboard players get #GenerateX0 Number
execute store result entity @e[tag=WarpPoint,limit=1] zTile int 1 run scoreboard players get #GenerateZ0 Number

effect clear @s minecraft:levitation

tp @s @e[tag=WarpPoint,limit=1]
kill @e[tag=WarpPoint,limit=1]
execute in overworld positioned as @s run tp @s ~0.5 ~ ~0.5

tag @s remove GenerateMap

#function map:load/tp_init
function map:load/tellraw/allocate/main

#マップなら初期位置にポータル設置
