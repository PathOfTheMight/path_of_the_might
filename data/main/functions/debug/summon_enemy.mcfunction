function enemy:summon/monster/undead/husk
scoreboard players set @e[tag=Husk,limit=1,sort=nearest] MaxHp 1000000
scoreboard players set @e[tag=Husk,limit=1,sort=nearest] Hp 1000000
effect give @e[tag=Husk,limit=1,sort=nearest] minecraft:slowness 1000000 10 true
tag @e[tag=Husk,limit=1,sort=nearest] remove Husk
