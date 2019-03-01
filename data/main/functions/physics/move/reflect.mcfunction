#ブロックに当たると反射 tag=Reflect
execute unless entity @s[scores={X1=-10..10}] run tag @s[tag=Reflect] add ReflectX
execute unless entity @s[scores={Y1=-10..10}] run tag @s[tag=Reflect] add ReflectY
execute unless entity @s[scores={Z1=-10..10}] run tag @s[tag=Reflect] add ReflectZ

#X軸反射
execute store result score @s[tag=ReflectX] rotationX run data get entity @s Rotation[0] 100
scoreboard players operation @s[tag=ReflectX] rotationX *= #-1 Number
execute store result entity @s[tag=ReflectX] Rotation[0] float 0.01 run scoreboard players get @s rotationX
#Y軸反射
execute store result score @s[tag=ReflectY] rotationY run data get entity @s Rotation[1] 100
scoreboard players operation @s[tag=ReflectY] rotationY *= #-1 Number
execute store result entity @s[tag=ReflectY] Rotation[1] float 0.01 run scoreboard players get @s rotationY
#Z軸反射
execute store result score @s[tag=ReflectZ] rotationX run data get entity @s Rotation[0] 100
scoreboard players operation @s[tag=ReflectZ] rotationX *= #-1 Number
scoreboard players add @s[tag=ReflectZ,scores={rotationX=0..}] rotationX 18000
scoreboard players remove @s[tag=ReflectZ,scores={rotationX=..-1}] rotationX 18000
execute store result entity @s[tag=ReflectZ] Rotation[0] float 0.01 run scoreboard players get @s rotationX
