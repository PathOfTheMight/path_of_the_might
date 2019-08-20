data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeLightning,BaseLightning,Duration,Projectile,SingleTarget]}}}}
#Dur
scoreboard players set #Temp Dur 40
#Mult
scoreboard players set #Temp Mult 6
#ProjSpd
scoreboard players set #Temp ProjSpd 50
#Effectiveness
scoreboard players set #Effectiveness Number 100
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main
#Diffuse
scoreboard players set #DiffuseX Number 60

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ^ ^ ^ 2 1

execute positioned as @s run tp @s ~ ~ ~ ~ ~
function skill:act/spark_spider/act1
