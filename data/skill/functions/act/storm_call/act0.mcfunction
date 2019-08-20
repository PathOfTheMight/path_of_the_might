data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeLightning,BaseLightning,Area,Duration]}}}}

scoreboard players set #Temp Rng 400
scoreboard players set #Temp Dur 30
#Effectiveness
scoreboard players set #Effectiveness Number 100
#ステータスロード
function skill:calc/act/load/base/main
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1 0.5

scoreboard players set #Loop Number 15
execute anchored eyes positioned ^ ^ ^ anchored feet run function main:physics/search_forward/player

execute positioned as 0-0-1-0-0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,AreaTarget,StormCall,StormCallMarker,StormCallWait,UniqueTick,Physics,Rotate,Rotate3,New],NoGravity:1b,Invisible:1b,Silent:1b,Small:1b,Marker:1b}
execute as @e[tag=StormCallMarker,tag=New,distance=..15,limit=1] run function skill:act/storm_call/act1
