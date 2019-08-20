summon minecraft:husk ~ ~ ~ {CustomName:'{"text":"生きてる魔導書"}',Tags:[New,Mob,Enemy,Daemon,MagicBook],ArmorItems:[{id:"minecraft:clay",Count:1b,tag:{AI:[6000],AIFire:[3000,3000,3000,3000,6000],AICold:[1500,1500,1500,1500,1500,1500,1500,6000],AILightning:[5000,5000,6000],AICharge:[2000,2000,2001,6000],AIInterval:[4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,6000]}},{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"叡智の書","color":"gold","bold":true}',Lore:['{"text":"この世のありとあらゆる魔法が記された書。","color":"white","bold":true,"italic":false}','{"text":"自我を持って本を開く者を選別する。","color":"white","bold":true,"italic":false}']}}},{},{id:"minecraft:book",Count:1b}],Silent:1b,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:48},{Name:generic.attackDamage,Base:-100}],ArmorDropChances:[0F,1F,0F,0F],ActiveEffects:[{Id:2,Amplifier:10,Duration:200,ShowParticles:0b},{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],Silent:1b,Health:200.0f,DeathLootTable:"minecraft:empty"}

scoreboard players set #BaseExp Number 100
scoreboard players set #BaseHp Number 200
scoreboard players set #BaseEs Number 0
scoreboard players set #BaseD Number 100
scoreboard players set #BaseArm Number 100
scoreboard players set #BaseAcc Number 100
scoreboard players set #BaseEva Number 100

scoreboard players set @e[limit=1,tag=New,distance=..0.1] Mult 2
scoreboard players set @e[limit=1,tag=New,distance=..0.1] SklDurIncP 150
execute as @e[limit=1,tag=New,distance=..0.1] run function enemy:calc/status
