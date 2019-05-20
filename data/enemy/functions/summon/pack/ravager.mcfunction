execute if block ^0.11 ^ ^-0.96 #main:canspawn positioned ^0.11 ^ ^-0.96 run function enemy:summon/monster/animal/ravager

#base stats
scoreboard players set #BaseExp Number 400
scoreboard players set #BaseHp Number 300
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 300
scoreboard players set #BaseArm Number 200
scoreboard players set #BaseAccu Number 140
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply

execute if block ^-1.42 ^ ^0 #main:canspawn positioned ^-1.42 ^ ^0 run function enemy:summon/monster/humanoid/pillager
execute if block ^0.1 ^ ^1.85 #main:canspawn positioned ^0.1 ^ ^1.85 run function enemy:summon/monster/humanoid/pillager
execute if block ^2.27 ^ ^-0.11 #main:canspawn positioned ^2.27 ^ ^-0.11 run function enemy:summon/monster/humanoid/pillager
execute if score #PackSizeIncP Number matches 25.. if block ^-1.83 ^ ^-4.02 #main:canspawn positioned ^-1.83 ^ ^-4.02 run function enemy:summon/monster/humanoid/pillager
execute if score #PackSizeIncP Number matches 50.. if block ^-2.03 ^ ^4.56 #main:canspawn positioned ^-2.03 ^ ^4.56 run function enemy:summon/monster/humanoid/pillager

#base stats
scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 100
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 120
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAccu Number 160
scoreboard players set #BaseEva Number 120

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply
