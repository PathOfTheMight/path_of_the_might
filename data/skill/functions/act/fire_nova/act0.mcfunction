data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeFire,BaseFire,AreaTarget]}}}}
#Rng
scoreboard players set #Temp Rng 400
#Radius Rng/12tick
scoreboard players operation #RadiusInc Number = #Temp Rng
scoreboard players operation #RadiusInc Number /= #12 Number
#Effectiveness
scoreboard players set #Effectiveness Number 120
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 1 0

summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,AreaTarget,FireNova,UniqueTick,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=FireNova,tag=New,distance=..1,limit=1] run function skill:act/fire_nova/act1
