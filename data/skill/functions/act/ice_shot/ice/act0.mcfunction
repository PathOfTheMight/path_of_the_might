data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Attack,Area,TypeCold,BasePhysical,Projectile,AreaTarget]}}}}
#Rng
scoreboard players set #Temp Rng 200
#Effectiveness
scoreboard players set #Effectiveness Number 100
#PhConvCo
scoreboard players add #Temp PhConvCoP 100
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

particle minecraft:firework ~ ~ ~ 0 0 0 0.3 9 force
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 0.5 0

#氷召喚
execute positioned as @e[scores={RngFlag=1},limit=1,sort=nearest] run summon minecraft:armor_stand ^ ^0.5 ^ {Tags:[Skill,Attack,AreaTarget,Ice,New],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:1100201}}],Invisible:1b,Silent:1b,Small:1b,Motion:[0d,-0.5d,0d]}

execute as @e[tag=Ice,tag=New,limit=1,distance=..4] positioned as @s run function skill:act/ice_shot/ice/act1
