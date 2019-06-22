data merge block -40691 1 -40700 {RecordItem:{tag:{Skill:{Tags:[Active,Spell,TypeLightning,BaseLightning,SingleTarget]}}}}
#Effectiveness
scoreboard players set #Effectiveness Number 80
#ステータスロード
function skill:calc/act/load/base/main
#Chai
scoreboard players operation #Temp Chai += @s Chai
#ダメージ計算
function skill:calc/act/damage/main

playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 0.3 2 0.6

summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,SingleTarget,KillOnFin,Arc,UniqueHit,UniqueTick,Physics,Move,Reflect,Time,New],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}

execute as @e[tag=Arc,tag=New,distance=..1,limit=1] run function skill:act/arc/act1
