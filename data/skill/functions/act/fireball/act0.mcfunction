data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,Fire,Projectile,Area]}}}}
#Spd
scoreboard players set #Temp ProjSpd 80
#Effectiveness
scoreboard players set #Effectiveness Number 180
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ^ ^ ^ 0.8 1

function skill:act/fireball/act1
