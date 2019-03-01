#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2
#Chai
scoreboard players operation #Chai Number = @s Chai
scoreboard players add #Chai Number 7
#WaitTimeH
scoreboard players set #WaitTimeH Number 1200
execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

scoreboard players remove @s mana 8

playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 0.3 2 0.6

summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,Single,Arc,UniqueHit,Move,Reflect,Time,New],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}

execute as @e[tag=Arc,tag=New,distance=..1,limit=1] run function skill:act/arc/act1
