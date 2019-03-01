#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#WaitTimeH
scoreboard players set #WaitTimeH Number 1500
execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

#Rng
scoreboard players set #Rng Number 400
execute unless entity @s[scores={RngIncP=0}] run function skill:calc/increase/range
#Radius Rng/12tick
scoreboard players operation #RadiusInc Number = #Rng Number
scoreboard players operation #RadiusInc Number /= #12 Number

scoreboard players remove @s mana 8

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 1 0

summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,Spell,Area,FireNova,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=FireNova,tag=New,distance=..1,limit=1] run function skill:act/fire_nova/act1
