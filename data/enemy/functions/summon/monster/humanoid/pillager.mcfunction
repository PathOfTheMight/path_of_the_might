summon minecraft:pillager ~ ~ ~ {CustomName:'{"text":"ピレジャー"}',Tags:[New,Mob,Enemy,Humanoid,Pillager],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 120
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 120
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAcc Number 160
scoreboard players set #BaseEva Number 120

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
