execute if block ^0.11 ^ ^-0.96 #main:canspawn positioned ^0.11 ^ ^-0.96 run function enemy:summon/monster/group/template
execute if block ^-1.42 ^ ^0 #main:canspawn positioned ^-1.42 ^ ^0 run function enemy:summon/monster/group/template
execute if block ^0.1 ^ ^1.85 #main:canspawn positioned ^0.1 ^ ^1.85 run function enemy:summon/monster/group/template
execute if block ^2.27 ^ ^-0.11 #main:canspawn positioned ^2.27 ^ ^-0.11 run function enemy:summon/monster/group/template
execute if block ^0.03 ^ ^-2.68 #main:canspawn positioned ^0.03 ^ ^-2.68 run function enemy:summon/monster/group/template
execute if block ^-3.04 ^ ^-0.38 #main:canspawn positioned ^-3.04 ^ ^-0.38 run function enemy:summon/monster/group/template
execute if block ^-1 ^ ^3.28 #main:canspawn positioned ^-1 ^ ^3.28 run function enemy:summon/monster/group/template
execute if block ^3.27 ^ ^1.88 #main:canspawn positioned ^3.27 ^ ^1.88 run function enemy:summon/monster/group/template
execute if block ^2.96 ^ ^-2.85 #main:canspawn positioned ^2.96 ^ ^-2.85 run function enemy:summon/monster/group/template
execute if block ^-1.83 ^ ^-4.02 #main:canspawn positioned ^-1.83 ^ ^-4.02 run function enemy:summon/monster/group/template
execute if block ^-4.71 ^ ^0.15 #main:canspawn positioned ^-4.71 ^ ^0.15 run function enemy:summon/monster/group/template
execute if block ^-2.03 ^ ^4.56 #main:canspawn positioned ^-2.03 ^ ^4.56 run function enemy:summon/monster/group/template
execute if block ^3.15 ^ ^4.2 #main:canspawn positioned ^3.15 ^ ^4.2 run function enemy:summon/monster/group/template
execute if block ^5.47 ^ ^-0.44 #main:canspawn positioned ^5.47 ^ ^-0.44 run function enemy:summon/monster/group/template
execute if block ^2.93 ^ ^-4.9 #main:canspawn positioned ^2.93 ^ ^-4.9 run function enemy:summon/monster/group/template
execute if block ^-2.06 ^ ^-5.55 #main:canspawn positioned ^-2.06 ^ ^-5.55 run function enemy:summon/monster/group/template
execute if block ^-5.68 ^ ^-2.24 #main:canspawn positioned ^-5.68 ^ ^-2.24 run function enemy:summon/monster/group/template
execute if block ^-5.76 ^ ^2.49 #main:canspawn positioned ^-5.76 ^ ^2.49 run function enemy:summon/monster/group/template
execute if block ^-2.72 ^ ^5.83 #main:canspawn positioned ^-2.72 ^ ^5.83 run function enemy:summon/monster/group/template
execute if block ^1.52 ^ ^6.38 #main:canspawn positioned ^1.52 ^ ^6.38 run function enemy:summon/monster/group/template
execute if block ^5.01 ^ ^4.41 #main:canspawn positioned ^5.01 ^ ^4.41 run function enemy:summon/monster/group/template
execute if block ^6.69 ^ ^1.1 #main:canspawn positioned ^6.69 ^ ^1.1 run function enemy:summon/monster/group/template
execute if block ^6.47 ^ ^-2.28 #main:canspawn positioned ^6.47 ^ ^-2.28 run function enemy:summon/monster/group/template
execute if block ^4.89 ^ ^-4.89 #main:canspawn positioned ^4.89 ^ ^-4.89 run function enemy:summon/monster/group/template
execute if block ^2.68 ^ ^-6.43 #main:canspawn positioned ^2.68 ^ ^-6.43 run function enemy:summon/monster/group/template
execute if block ^0.43 ^ ^-6.98 #main:canspawn positioned ^0.43 ^ ^-6.98 run function enemy:summon/monster/group/template
execute if block ^-1.51 ^ ^-6.84 #main:canspawn positioned ^-1.51 ^ ^-6.84 run function enemy:summon/monster/group/template
execute if block ^-2.97 ^ ^-6.33 #main:canspawn positioned ^-2.97 ^ ^-6.33 run function enemy:summon/monster/group/template
execute if block ^-3.96 ^ ^-5.73 #main:canspawn positioned ^-3.96 ^ ^-5.73 run function enemy:summon/monster/group/template
execute if block ^-5.25 ^ ^-4.57 #main:canspawn positioned ^-5.25 ^ ^-4.57 run function enemy:summon/monster/group/template

#if score #PackSizeIncP Number matches 10.. 

#base stats
scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 100
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 100
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAccu Number 100
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply