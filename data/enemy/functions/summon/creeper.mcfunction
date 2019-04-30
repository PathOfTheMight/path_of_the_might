execute if block ^0.11 ^ ^-0.96 #main:canspawn run summon minecraft:creeper ^0.11 ^ ^-0.96 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^-1.42 ^ ^0 #main:canspawn run summon minecraft:creeper ^-1.42 ^ ^0 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^0.1 ^ ^1.85 #main:canspawn run summon minecraft:creeper ^0.1 ^ ^1.85 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^0.03 ^ ^-2.68 #main:canspawn run summon minecraft:creeper ^0.03 ^ ^-2.68 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^-3.04 ^ ^-0.38 #main:canspawn run summon minecraft:creeper ^-3.04 ^ ^-0.38 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^3.27 ^ ^1.88 #main:canspawn run summon minecraft:creeper ^3.27 ^ ^1.88 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 13.. if block ^2.96 ^ ^-2.85 #main:canspawn run summon minecraft:creeper ^2.96 ^ ^-2.85 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 38.. if block ^-4.71 ^ ^0.15 #main:canspawn run summon minecraft:creeper ^-4.71 ^ ^0.15 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 50.. if block ^-2.03 ^ ^4.56 #main:canspawn run summon minecraft:creeper ^-2.03 ^ ^4.56 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
#base stats
scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 80
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 100
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAccu Number 100
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply

execute if block ^2.27 ^ ^-0.11 #main:canspawn run summon minecraft:creeper ^2.27 ^ ^-0.11 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],powered:1b,Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if block ^-1 ^ ^3.28 #main:canspawn run summon minecraft:creeper ^-1 ^ ^3.28 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],powered:1b,Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
execute if score #PackSizeIncP Number matches 25.. if block ^-1.83 ^ ^-4.02 #main:canspawn run summon minecraft:creeper ^-1.83 ^ ^-4.02 {CustomName:'{"text":"クリーパー"}',Tags:[New,Husk,Time-,Mob,Enemy,Undead],powered:1b,Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}
#base stats
scoreboard players set #BaseExp Number 120
scoreboard players set #BaseHp Number 150
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseDmg Number 140
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAccu Number 100
scoreboard players set #BaseEva Number 100

function enemy:calc/status/calc
execute as @e[tag=New,distance=..6] run function enemy:calc/status/apply
