#Rng
scoreboard players set #Temp Rng 400
#Radius Rng/12tick
scoreboard players operation #RadiusInc Number = #Temp Rng
scoreboard players operation #RadiusInc Number /= #12 Number
#Effectiveness
scoreboard players set #Effectiveness Number 120
#Level
function skill:level/act/active/blue/fire_nova/allocate/main
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.vex.ambient master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.splash_potion.break master @a[distance=..16] ~ ~ ~ 1 0

summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,Area,IceNova,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=IceNova,tag=New,distance=..1,limit=1] run function skill:act/ice_nova/act1
