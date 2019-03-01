#ホーミング
execute store result score #rotationX Number run data get entity @s Rotation[0] 1000
execute store result score #rotationY Number run data get entity @s Rotation[1] 1000

#回転角度取得
scoreboard players set #angle Number 0
execute if entity @s[tag=Homing1] run scoreboard players add #angle Number 1000
execute if entity @s[tag=Homing2] run scoreboard players add #angle Number 2000
execute if entity @s[tag=Homing4] run scoreboard players add #angle Number 4000
execute if entity @s[tag=Homing8] run scoreboard players add #angle Number 8000
execute if entity @s[tag=Homing16] run scoreboard players add #angle Number 16000

#回転角度加算
execute rotated as @s positioned as @e[type=villager,limit=1,sort=nearest,distance=..48] positioned ^-1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation #rotationX Number -= #angle Number
execute rotated as @s positioned as @e[type=villager,limit=1,sort=nearest,distance=..48] positioned ^1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation #rotationX Number += #angle Number
execute rotated as @s positioned as @e[type=villager,limit=1,sort=nearest,distance=..48] positioned ^ ^-1000 ^ positioned as @s[distance=..1000] run scoreboard players operation #rotationY Number -= #angle Number
execute rotated as @s positioned as @e[type=villager,limit=1,sort=nearest,distance=..48] positioned ^ ^1000 ^ positioned as @s[distance=..1000] run scoreboard players operation #rotationY Number += #angle Number

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #rotationX Number
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #rotationY Number
