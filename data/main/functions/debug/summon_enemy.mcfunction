function enemy:summon/monster/undead/husk
scoreboard players set @e[tag=Husk,limit=1,sort=nearest] MaxHp 1000000
scoreboard players set @e[tag=Husk,limit=1,sort=nearest] Hp 1000000
tag @e[tag=Husk,limit=1,sort=nearest] remove Husk
