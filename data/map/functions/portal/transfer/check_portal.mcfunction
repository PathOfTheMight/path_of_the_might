#ポータルが近くにないとき
execute unless entity @e[tag=Portal,distance=..2,limit=1,sort=nearest] run tellraw @s {"text":"近くにポータルがない！"}
execute unless entity @e[tag=Portal,distance=..2,limit=1,sort=nearest] run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

#ポータルが近くにあるとき
execute if entity @e[tag=Portal,distance=..2,limit=1,sort=nearest] run function map:portal/transfer/check_portal_map
