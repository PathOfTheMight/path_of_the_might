data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeCold,BaseCold,Projectile,SingleTarget]}}}}
#Spd
scoreboard players set #Temp ProjSpd 240
#Effectiveness
scoreboard players set #Effectiveness Number 80
#ステータスロード
function skill:calc/act/load/base/main
#ショットガンあり
scoreboard players set #Temp RngExp -1
#ダメージ計算
function skill:calc/act/damage/main
#Diffuse
scoreboard players set #DiffuseX Number 5

playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 0.5 0

execute positioned as @s run tp @s ~ ~ ~ ~ ~
function skill:act/ice_spear/act1
