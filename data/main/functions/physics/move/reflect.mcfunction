#ブロックに当たると反射 tag=Reflect
execute unless entity @s[scores={X1=-10..10}] run tag @s[tag=Reflect] add ReflectX
execute unless entity @s[scores={Y1=-10..10}] run tag @s[tag=Reflect] add ReflectY
execute unless entity @s[scores={Z1=-10..10}] run tag @s[tag=Reflect] add ReflectZ

#X軸反射
execute if entity @s[tag=ReflectX] store result score #RotationX Number run data get entity @s Rotation[0] 100
execute if entity @s[tag=ReflectX] run scoreboard players operation #RotationX Number *= #-1 Number
execute store result entity @s[tag=ReflectX] Rotation[0] float 0.01 run scoreboard players get #RotationX Number
#Y軸反射
execute if entity @s[tag=ReflectY] store result score #RotationY Number run data get entity @s Rotation[1] 100
execute if entity @s[tag=ReflectY] run scoreboard players operation #RotationY Number *= #-1 Number
execute store result entity @s[tag=ReflectY] Rotation[1] float 0.01 run scoreboard players get #RotationY Number
#Z軸反射
execute if entity @s[tag=ReflectZ] store result score #RotationZ Number run data get entity @s Rotation[0] 100
execute if entity @s[tag=ReflectZ] run scoreboard players operation #RotationZ Number *= #-1 Number
execute if score #RotationZ Number matches 0.. run scoreboard players add #RotationZ Number 18000
execute if score #RotationZ Number matches ..-1 run scoreboard players remove #RotationZ Number 18000
execute store result entity @s[tag=ReflectZ] Rotation[0] float 0.01 run scoreboard players get #RotationZ Number

execute at @s run tp @s ~ ~0.01 ~ ~ ~

#反射タグ除去
tag @s[tag=ReflectX] remove ReflectX
tag @s[tag=ReflectY] remove ReflectY
tag @s[tag=ReflectZ] remove ReflectZ
