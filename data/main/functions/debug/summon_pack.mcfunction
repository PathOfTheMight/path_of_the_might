execute rotated ~ 0 run function enemy:summon/pack/husk
scoreboard players set @e[tag=Enemy,distance=..7] MaxHp 1000000
scoreboard players set @e[tag=Enemy,distance=..7] Hp 1000000
effect give @e[tag=Enemy,distance=..7] minecraft:weakness 1000000 5 true
effect give @e[tag=Enemy,distance=..7] minecraft:slowness 1000000 5 true
tag @e[tag=Enemy,distance=..7] remove Husk
