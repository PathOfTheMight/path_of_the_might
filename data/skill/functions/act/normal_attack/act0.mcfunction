data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Attack,BasePhysical,AreaTarget]}}}}

execute positioned as @s run tp @s ~ ~ ~ ~ ~

execute if entity @s[y_rotation=0..90] run summon minecraft:armor_stand ~ ~-1.2 ~ {Tags:[Skill,Attack,AreaTarget,LeaveOnFin,Pose,RightArm0,MeleeAttack,New],Invisible:1b,NoGravity:1b,Rotation:[45f,0f],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{Body:[0f,0f,0f],RightArm:[210f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[y_rotation=90.001..180] run summon minecraft:armor_stand ~ ~-1.2 ~ {Tags:[Skill,Attack,AreaTarget,LeaveOnFin,Pose,RightArm0,MeleeAttack,New],Invisible:1b,NoGravity:1b,Rotation:[135f,0f],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{Body:[0f,0f,0f],RightArm:[210f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[y_rotation=-180..-90] run summon minecraft:armor_stand ~ ~-1.2 ~ {Tags:[Skill,Attack,AreaTarget,LeaveOnFin,Pose,RightArm0,MeleeAttack,New],Invisible:1b,NoGravity:1b,Rotation:[-135f,0f],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{Body:[0f,0f,0f],RightArm:[210f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[y_rotation=-89.999..-0.001] run summon minecraft:armor_stand ~ ~-1.2 ~ {Tags:[Skill,Attack,AreaTarget,LeaveOnFin,Pose,RightArm0,MeleeAttack,New],Invisible:1b,NoGravity:1b,Rotation:[-45f,0f],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{Body:[0f,0f,0f],RightArm:[210f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}

#Effectiveness
scoreboard players set #Effectiveness Number 100
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

#scoreboard players set #Temp WaitTimeH 2000

playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1 1.2

execute as @e[tag=MeleeAttack,tag=New,distance=..2,limit=1,sort=nearest] rotated ~ 0 run function skill:act/normal_attack/act1
