data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Attack,TypeCold,BasePhysical,Projectile,SingleTarget,KillOnFin]}}}}
#Spd
scoreboard players set #Temp ProjSpd 150
#Effectiveness
scoreboard players set #Effectiveness Number 100
#PhConvCo
scoreboard players add #Temp PhConvCoP 60
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 0.5 0

execute positioned as @s run tp @s ~ ~ ~ ~ ~
function skill:act/ice_shot/arrow/act1
