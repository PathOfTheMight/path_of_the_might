function enemy:summon/monster/undead/husk
scoreboard players set @e[tag=Enemy,tag=New,limit=1,sort=nearest] MaxHp 1000000
scoreboard players set @e[tag=Enemy,tag=New,limit=1,sort=nearest] Hp 1000000
tag @e[tag=New] remove New
