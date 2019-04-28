execute if block ^0.11 ^ ^-0.96 #main:canspawn run summon minecraft:ravager ^0.11 ^ ^-0.96 {CustomName:'{"text":"ラベジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

#base stats
scoreboard players set #BaseExp Number 400
scoreboard players set #BaseHpH Number 300
scoreboard players set #BaseEsH Number 0
scoreboard players set #BaseDmg Number 300
scoreboard players set #BaseArm Number 200
scoreboard players set #BaseAccu Number 140
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply

execute if block ^-1.42 ^ ^0 #main:canspawn run summon minecraft:pillager ^-1.42 ^ ^0 {CustomName:'{"text":"ピレジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^0.1 ^ ^1.85 #main:canspawn run summon minecraft:pillager ^0.1 ^ ^1.85 {CustomName:'{"text":"ピレジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^2.27 ^ ^-0.11 #main:canspawn run summon minecraft:pillager ^2.27 ^ ^-0.11 {CustomName:'{"text":"ピレジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 25.. if block ^-1.83 ^ ^-4.02 #main:canspawn run summon minecraft:pillager ^-1.83 ^ ^-4.02 {CustomName:'{"text":"ピレジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 50.. if block ^-2.03 ^ ^4.56 #main:canspawn run summon minecraft:pillager ^-2.03 ^ ^4.56 {CustomName:'{"text":"ピレジャー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

#base stats
scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHpH Number 100
scoreboard players set #BaseEsH Number 0
scoreboard players set #BaseDmg Number 120
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAccu Number 160
scoreboard players set #BaseEva Number 120

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply