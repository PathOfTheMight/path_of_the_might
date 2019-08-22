data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Attack,Area,TypePhysical,BasePhysical,AreaTarget]}}}}

execute store success score #Cyclone Number run scoreboard players operation #ID Number = @s ID
execute as @e[tag=Cyclone,distance=..21] if score #ID Number = @s ID run function skill:act/cyclone/channel

#Effectiveness
scoreboard players set #Effectiveness Number 100
#Rng
scoreboard players add #Temp Rng 200
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1 1.2

#Cyclone=1で新しく召喚
execute if score #Cyclone Number matches 1 run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:[Skill,Attack,AreaTarget,UniqueTick,UniqueHit,KillOnFin,Cyclone,Physics,Rotate,Rotate37,New],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}],Pose:{RightArm:[80f,0f,90f]},Invisible:1b,Silent:1b,Small:0b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}

execute as @e[tag=Cyclone,tag=New,distance=..2,limit=1] run function skill:act/cyclone/act1
