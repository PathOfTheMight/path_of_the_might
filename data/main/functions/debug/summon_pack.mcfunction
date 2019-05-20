execute rotated ~ 0 run function enemy:summon/pack/husk
scoreboard players set @e[tag=Enemy,distance=..7] MaxHp 1000000
scoreboard players set @e[tag=Enemy,distance=..7] Hp 1000000
effect give @e[tag=Enemy,distance=..7] minecraft:weakness 1000000 5 true
effect give @e[tag=Enemy,distance=..7] minecraft:speed 1000000 2 true
tag @e[distance=..7] remove New
