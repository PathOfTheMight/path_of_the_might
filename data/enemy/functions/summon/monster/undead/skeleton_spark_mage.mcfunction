summon minecraft:skeleton ~ ~ ~ {CustomName:'{"text":"スケルトンメイジ"}',Tags:[New,Mob,Enemy,Undead,SkeletonSparkMage],ArmorItems:[{id:"minecraft:clay",Count:1b,tag:{AI:[4000,4000,4000,7000]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16771642}}},{id:"minecraft:sandstone_wall",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],HandItems:[{id:"minecraft:horn_coral_fan",Count:1b},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:1000000},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],Health:1000000.0f,DeathLootTable:"minecraft:empty",DeathTime:19s}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 80
scoreboard players set #BaseEs Number 10
scoreboard players set #BaseD Number 100
scoreboard players set #BaseArm Number 50
scoreboard players set #BaseAcc Number 100
scoreboard players set #BaseEva Number 80

scoreboard players set @e[limit=1,tag=New,distance=..0.1] Mult -5

execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
