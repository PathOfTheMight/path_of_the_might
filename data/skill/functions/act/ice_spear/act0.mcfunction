#Mult
scoreboard players operation #Mult Number = @s Mult
scoreboard players add #Mult Number 1
execute if score #Mult Number matches 2.. run function main:rand
execute if score #Mult Number matches 2.. run scoreboard players set #Shotgun Number 1
execute if score #Mult Number matches ..1 run scoreboard players set #Shotgun Number 0
#Spd
scoreboard players set #SProjSpd Number 80
execute unless entity @s[scores={ProjSpdIncP=0}] run function skill:calc/projectile/set_speed
#Pier
scoreboard players operation #Pier Number = @s Pier
scoreboard players add #Pier Number 10000
#Fork
scoreboard players operation #Fork Number = @s Fork
#Chai
scoreboard players operation #Chai Number = @s Chai
#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#WaitTimeH WaitTimeH=基礎WaitTimeH(Tick)*100/TCasSpdH
scoreboard players set #WaitTimeH Number 1000
execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

scoreboard players remove @s mana 8

playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 0.5 0

function skill:act/ice_spear/act1

