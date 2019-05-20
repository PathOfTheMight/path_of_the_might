particle minecraft:dust 100000000 100000000 0.3 2 ^ ^ ^-0.5 0 0 0 0 0 force
particle minecraft:dust 0.1 0.5 20000000 3 ^ ^ ^0.5 0 0 0 0 0 force

#オートチェイン
scoreboard players add @s Number 1
execute if entity @s[scores={Number=9},tag=SkillP] run tp @s ~ ~ ~ facing entity @e[tag=Enemy,limit=1,sort=nearest,distance=..10]
execute if entity @s[scores={Number=9},tag=SkillE] run tp @s ~ ~ ~ facing entity @e[tag=Player,limit=1,sort=nearest,distance=..10]
scoreboard players remove @s[scores={Number=9}] Chai 1
