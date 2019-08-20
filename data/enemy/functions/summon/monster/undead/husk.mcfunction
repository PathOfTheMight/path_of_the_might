summon minecraft:husk ~ ~ ~ {CustomName:'{"text":"ハスク"}',Tags:[New,Mob,Enemy,Undead,Husk],ArmorItems:[{id:"minecraft:clay",Count:1b,tag:{AI:[2000]}},{},{},{}],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 110
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 100
scoreboard players set #BaseArm Number 120
scoreboard players set #BaseAcc Number 80
scoreboard players set #BaseEva Number 80

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
