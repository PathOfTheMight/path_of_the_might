#Mult
execute if score #Mult Number matches 1.. run function skill:calc/shotgun/main
#Spd
scoreboard players set #SProjSpd Number 100
#execute unless entity @s[scores={ProjSpdIncP=0}] run function skill:calc/increase/projectile_speed

#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#WaitTimeH WaitTimeH=基礎WaitTimeH(Tick)*100/cast_Spd
scoreboard players set #WaitTimeH Number 1200
#execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
#scoreboard players operation @s WaitTimeH += #WaitTimeH Number

function skill:level/act/active/fireball/main
#RngIncP 爆発時のRng
#scoreboard players set #Rng Number 300
#execute unless entity @s[scores={RngIncP=0}] run function skill:calc/increase/range

#scoreboard players set #Mp Number 8
#scoreboard players remove @s mana 8
function skill:calc/act/damage/main

playsound minecraft:entity.blaze.shoot master @a[distance=..16] ^ ^ ^ 0.8 1

function skill:act/fireball/act1
