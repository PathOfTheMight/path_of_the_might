execute if block ^0.11 ^ ^-0.96 #main:canspawn positioned ^0.11 ^ ^-0.96 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^-1.42 ^ ^0 #main:canspawn positioned ^-1.42 ^ ^0 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^0.1 ^ ^1.85 #main:canspawn positioned ^0.1 ^ ^1.85 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^2.27 ^ ^-0.11 #main:canspawn positioned ^2.27 ^ ^-0.11 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^0.03 ^ ^-2.68 #main:canspawn positioned ^0.03 ^ ^-2.68 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^-3.04 ^ ^-0.38 #main:canspawn positioned ^-3.04 ^ ^-0.38 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^-1 ^ ^3.28 #main:canspawn positioned ^-1 ^ ^3.28 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if block ^3.27 ^ ^1.88 #main:canspawn positioned ^3.27 ^ ^1.88 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if score #PackSizeIncP Number matches 13.. if block ^2.96 ^ ^-2.85 #main:canspawn positioned ^2.96 ^ ^-2.85 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if score #PackSizeIncP Number matches 25.. if block ^-1.83 ^ ^-4.02 #main:canspawn positioned ^-1.83 ^ ^-4.02 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if score #PackSizeIncP Number matches 38.. if block ^-4.71 ^ ^0.15 #main:canspawn positioned ^-4.71 ^ ^0.15 run function enemy:summon/monster/undead/skeleton_flame_mage
execute if score #PackSizeIncP Number matches 50.. if block ^-2.03 ^ ^4.56 #main:canspawn positioned ^-2.03 ^ ^4.56 run function enemy:summon/monster/undead/skeleton_flame_mage

#base stats
scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 90
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 120
scoreboard players set #BaseArm Number 50
scoreboard players set #BaseAccu Number 100
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply
