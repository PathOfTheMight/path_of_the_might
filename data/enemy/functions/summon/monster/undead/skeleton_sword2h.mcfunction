summon minecraft:skeleton ~ ~ ~ {CustomName:'{"text":"スケルトンソード"}',Tags:[New,Mob,Enemy,Undead,SkeletonSword2h],ArmorItems:[{id:"minecraft:clay",Count:1b,tag:{AI:[2000]}},{},{},{id:"minecraft:stone_button",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 90
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 120
scoreboard players set #BaseArm Number 50
scoreboard players set #BaseAcc Number 100
scoreboard players set #BaseEva Number 100

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
