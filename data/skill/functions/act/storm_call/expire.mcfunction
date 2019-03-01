scoreboard players set @e[tag=StormCall1,scores={Dur=1..},limit=1,sort=nearest] duration 0
tag @s remove StormCall
#summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;65527],FadeColors:[I;16777215]}]}}}}
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:explosion ~ ~ ~ 2 2 2 1 3 force
