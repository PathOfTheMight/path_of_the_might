summon minecraft:zombie ~ ~ ~ {CustomName:'{"text":"ゾンビ"}',Tags:[New,Mob,Enemy,Undead,Zombie],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 100
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 100
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAcc Number 80
scoreboard players set #BaseEva Number 70

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
