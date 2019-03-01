scoreboard players remove @s Trigger 1000

#Mapが一致しないとき
execute unless score @s Trigger = @e[tag=Portal,distance=..2,limit=1,sort=nearest] map run tellraw @s {"text":"ポータルの行き先が違うようだ。"}
execute unless score @s Trigger = @e[tag=Portal,distance=..2,limit=1,sort=nearest] map run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

#Mapが一致するとき
execute if score @s Trigger = @e[tag=Portal,distance=..2,limit=1,sort=nearest] map run function map:portal/transfer/check_generate_tick
