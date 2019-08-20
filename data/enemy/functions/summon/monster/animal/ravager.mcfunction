summon minecraft:ravager ~ ~ ~ {CustomName:'{"text":"ラベジャー"}',Tags:[New,Mob,Enemy,Animal,Ravager],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 400
scoreboard players set #BaseHp Number 300
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 300
scoreboard players set #BaseArm Number 200
scoreboard players set #BaseAcc Number 140
scoreboard players set #BaseEva Number 100

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
