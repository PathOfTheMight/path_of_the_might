summon minecraft:armor_stand ~ ~ ~ {Tags:[StormCall0,New],Invisible:1b,Silent:1b,Small:1b,Marker:1b}
tp @e[tag=StormCall0,tag=New,distance=..1,limit=1] ^ ^ ^ ~ ~

#Team
execute if entity @s[tag=Player] run scoreboard players set #Team Number 1
execute if entity @s[tag=Enemy] run scoreboard players set #Team Number 2

#Flag:ブロック探索の試行回数
scoreboard players set #Flag Number 15

#Dur duration(Tick)=基礎duration*duration(_multi)/100
scoreboard players set #Dur Number 30
scoreboard players operation #Dur Number *= @s Dur
scoreboard players operation #Dur Number /= #100 Number
scoreboard players add #Dur Number 25
#AoE AoE(*100block)=基礎AoE*AoE(_multi)/100 AoE(_multi)は100~200%まで設定可能
scoreboard players set #AoE Number 250
scoreboard players operation #AoE Number *= @s RngIncP
scoreboard players operation #AoE Number /= #100 Number

#LnD LnD=基礎LnD*LnD_multi/100
scoreboard players set #LnD Number 3000
#scoreboard players operation @e[tag=storm_call0,tag=New,limit=1] LnD *= @s mag_LnD_multi
#scoreboard players operation @e[tag=storm_call0,tag=New,limit=1] LnD /= #100 Number


#WaitTimeH WaitTimeH=基礎WaitTimeH(Tick)*100/TCasSpdH
scoreboard players set #WaitTimeH Number 1000
execute unless entity @s[scores={CasSpdIncP=0}] run function skill:calc/increase/cast_speed
scoreboard players operation @s WaitTimeH += #WaitTimeH Number

#mana
scoreboard players remove @p mana 18

playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1 0.5

execute as @e[tag=StormCall0,tag=New,limit=1] run function skill:act/storm_call/act1
