#MapからPos計算
execute store result score #WarpX Number run scoreboard players operation #WarpZ Number = @s map
#x,y,z=(map%21-10)*4096-32,1,(map/21-10)*4096-32
scoreboard players operation #WarpX Number %= #21 Number
scoreboard players operation #WarpX Number -= #10 Number
scoreboard players operation #WarpX Number *= #4096 Number
scoreboard players remove #WarpX Number 32

scoreboard players operation #WarpZ Number /= #21 Number
scoreboard players operation #WarpZ Number -= #10 Number
scoreboard players operation #WarpZ Number *= #4096 Number
scoreboard players remove #WarpZ Number 32

#Warp
summon minecraft:arrow ~ ~ ~ {Tags:[WarpPoint],xTile:0,yTile:0,zTile:0}

#Pos代入
execute store result entity @e[tag=WarpPoint,limit=1] Pos[0] double 1 run scoreboard players get #WarpX Number
execute store result entity @e[tag=WarpPoint,limit=1] Pos[2] double 1 run scoreboard players get #WarpZ Number
#Tile代入
scoreboard players operation #WarpX Number /= #16 Number
scoreboard players operation #WarpZ Number /= #16 Number
execute store result entity @e[tag=WarpPoint,limit=1] xTile int 1 run scoreboard players get #WarpX Number
execute store result entity @e[tag=WarpPoint,limit=1] zTile int 1 run scoreboard players get #WarpZ Number

tp @s @e[tag=WarpPoint,limit=1]
kill @e[tag=WarpPoint,limit=1]
execute in overworld positioned as @s run tp @s ~0.5 ~ ~0.5

execute positioned as @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1
