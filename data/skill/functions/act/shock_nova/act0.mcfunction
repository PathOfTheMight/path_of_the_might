data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeLightning,BaseLightning,AreaTarget]}}}}
#AoE 放電AoE=44*8*RngIncP リングAoE_max=44*7*RngIncP リングAoE_min=44*5*RngIncP
scoreboard players set #Temp Rng 54
#Effectiveness
scoreboard players set #Effectiveness Number 120
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.evoker_fangs.attack master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 0.6 1.5

#1:リング 2:放電pre 3:放電
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,ShockNova,Spell,AreaTarget,ShockNova1,Donut,Physics,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,ShockNova,Spell,AreaTarget,ShockNova2,Physics,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=ShockNova,distance=..1,limit=2,tag=New] run function skill:act/shock_nova/act1
