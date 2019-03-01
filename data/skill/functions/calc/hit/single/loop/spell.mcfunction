execute as @e[scores={RngFlag=3},distance=..21,limit=1,sort=nearest] run function skill:calc/hit/apply/spell

execute if entity @s[scores={Pier=..0,Fork=0,Chai=1..}] run function skill:calc/chain/main
execute if entity @s[scores={Pier=..0,Fork=1..}] run function skill:calc/fork/main
scoreboard players remove @s[scores={Pier=0..}] Pier 1

execute if entity @s[scores={Pier=-1,Fork=0,Chai=0}] run tag @s add Kill
execute if entity @s[tag=UniqueHit] run function skill:calc/hit/unique
execute unless entity @s[scores={Pier=-1,Fork=0,Chai=0}] if entity @e[scores={RngFlag=3},distance=..21,limit=1,sort=nearest] run function skill:calc/hit/single/loop/spell
