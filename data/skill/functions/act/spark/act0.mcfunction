data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,Lightning,Duration,Projectile,Single]}}}}
#Dur
scoreboard players set #Temp Dur 40
#Mult
scoreboard players set #Temp Mult 6
#Pier
scoreboard players set #Temp Pier 10000
#ProjSpd
scoreboard players set #Temp ProjSpd 50
#Effectiveness
scoreboard players set #Effectiveness Number 180
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main
#Diffuse
scoreboard players set #DiffuseX Number 60
scoreboard players set #DiffuseY Number 1

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ^ ^ ^ 0.8 1

execute positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated ~ 0 run function skill:act/spark/act1
