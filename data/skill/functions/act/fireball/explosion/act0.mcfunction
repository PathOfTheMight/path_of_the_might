data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,Area,TypeFire,BaseFire,Projectile,SingleTarget]}}}}
#Rng
scoreboard players set #Temp Rng 130
#Effectiveness
scoreboard players set #Effectiveness Number 180
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

particle minecraft:flame ~ ~-1 ~ 0 0.2 0 0.2 20 force
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~-1 ~ 0.7 1 0.05

summon minecraft:area_effect_cloud ^ ^ ^ {Tags:[Skill,Spell,AreaTarget,Donut,FireballExplosion,New],Duration:5}
execute as @e[tag=FireballExplosion,tag=New] run function skill:act/fireball/explosion/act1
