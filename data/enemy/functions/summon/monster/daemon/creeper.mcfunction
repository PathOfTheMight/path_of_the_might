summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"クリーパー"}',Tags:[New,Mob,Enemy,Daemon,Creeper],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 80
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 100
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAcc Number 100
scoreboard players set #BaseEva Number 100

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
