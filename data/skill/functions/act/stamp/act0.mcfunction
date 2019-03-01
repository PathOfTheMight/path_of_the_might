#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#WaitTimeH WaitTimeH=基礎WaitTimeH(Tick)*100/TAtkSpdH
scoreboard players set #WaitTimeH Number 1500
execute unless entity @s[scores={TAtkSpdIncP=0}] run function skill:calc/increase/attack_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

#AoE AoE(*100block)=基礎AoE*AoE(_multi)/100 AoE(_multi)は100~200%まで設定可能
scoreboard players set #AoE Number 180
scoreboard players operation #AoE Number *= @s RngIncP
scoreboard players operation #AoE Number /= #100 Number

#accu
scoreboard players operation #accu Number = @s accu

scoreboard players remove @s mana 8

playsound minecraft:entity.player.attack.crit master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 0.6 1

execute rotated ~ 0 run summon minecraft:armor_stand ^ ^0.5 ^1.2 {Tags:[Skill,Attack,Area,Stamp,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}

execute as @e[tag=Stamp,tag=New,limit=1] run function skill:act/stamp/act1
