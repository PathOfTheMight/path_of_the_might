#Map更新
scoreboard players operation @s map = @s Trigger

#portalのPos取得,kill
execute as @e[tag=Portal,distance=..2,limit=1,sort=nearest] run function map:portal/transfer/get_pos

summon minecraft:arrow ~ ~ ~ {Tags:[WarpPoint],xTile:0,yTile:0,zTile:0}

#Pos代入
execute store result entity @e[tag=WarpPoint,limit=1] Pos[0] double 1 run scoreboard players get #warpX Number
execute store result entity @e[tag=WarpPoint,limit=1] Pos[1] double 1 run scoreboard players get #warpY Number
execute store result entity @e[tag=WarpPoint,limit=1] Pos[2] double 1 run scoreboard players get #warpZ Number
#Tile代入
scoreboard players operation #warpX Number /= #16 Number
scoreboard players operation #warpY Number /= #16 Number
scoreboard players operation #warpZ Number /= #16 Number
execute store result entity @e[tag=WarpPoint,limit=1] xTile int 1 run scoreboard players get #warpX Number
execute store result entity @e[tag=WarpPoint,limit=1] yTile int 1 run scoreboard players get #warpY Number
execute store result entity @e[tag=WarpPoint,limit=1] zTile int 1 run scoreboard players get #warpZ Number

tp @s @e[tag=WarpPoint,limit=1]
kill @e[tag=WarpPoint,limit=1]
#execute in overworld positioned as @s run tp @s ~ ~ ~

#対のportalをkill
#scoreboard players operation #ID Number = @s ID
#execute positioned as @s as @e[tag=Portal,distance=..2,limit=1,sort=nearest] if score @s ID = #ID Number run kill @s

execute positioned as @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

#Map_timerチェック
function map:load/map_timer/check/allocate/main
