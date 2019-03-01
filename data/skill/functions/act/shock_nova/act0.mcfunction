#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#WaitTimeH WaitTimeH=基礎WaitTimeH(Tick)*100/TCasSpdH
scoreboard players set #WaitTimeH Number 1500
execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

#AoE 放電AoE=44*8*RngIncP リングAoE_max=44*7*RngIncP リングAoE_min=44*5*RngIncP
scoreboard players set #RngIncP Number 44
scoreboard players operation #RngIncP Number *= @s RngIncP
scoreboard players operation #RngIncP Number /= #100 Number

scoreboard players remove @s mana 8

playsound minecraft:entity.evoker_fangs.attack master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 0.6 1.5

#1:リング 2:放電pre 3:放電
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,ShockNova,Spell,Area,ShockNova1,Donut,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,ShockNova,Spell,Area,ShockNova2,Rotate,Rotate37,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=ShockNova,distance=..1,tag=New] run function skill:act/shock_nova/act1
