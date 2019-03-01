#重力時 X0,Z0は常に1Tick目/反射時の値を用いる
scoreboard players operation @s[tag=!GravityInited] X2 = @s X0
scoreboard players operation @s[tag=!GravityInited] Y2 = @s Y0
scoreboard players operation @s[tag=!GravityInited] Z2 = @s Z0
tag @s[tag=!GravityInited] add GravityInited
scoreboard players operation @s[tag=ReflectX] X2 = @s X0
scoreboard players operation @s[tag=ReflectY] Y2 = @s Y0
scoreboard players operation @s[tag=ReflectZ] Z2 = @s Z0

scoreboard players operation @s X0 = @s X2
scoreboard players operation @s Y2 = @s Gravity
scoreboard players operation @s Y0 = @s Y2
scoreboard players operation @s Z0 = @s Z2
