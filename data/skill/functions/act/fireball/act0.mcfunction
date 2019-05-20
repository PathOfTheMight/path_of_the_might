#Spd
scoreboard players set #Temp ProjSpd 80
#Effectiveness
scoreboard players set #Effectiveness Number 180
#Level
function skill:level/act/active/blue/fireball/allocate/main
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ^ ^ ^ 0.8 1

function skill:act/fireball/act1
