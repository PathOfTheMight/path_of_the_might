#第二形態に移行
scoreboard players remove @s[scores={Dur=30}] Pier 10000
scoreboard players set @s[scores={Dur=30,Pier=..0}] Pier 1
scoreboard players operation @s[scores={Dur=30}] CoD *= #2 Number
execute if entity @s[scores={Dur=..30}] run particle minecraft:dust 2 1 90000000 2 ~ ~ ~ 0 0 0 0 0 force
#死亡時
execute if entity @s[tag=Kill] run particle minecraft:dust 2 1 90000000 2 ~ ~ ~ 0.2 0.2 0.2 1 9 force
execute if entity @s[tag=Kill] run playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1 0.3
#向き補正tp
tp @s[scores={Dur=38..40}] ^ ^ ^1 ~1 ~
tp @s[scores={Dur=35..37}] ^ ^ ^1 ~-1 ~
tag @s[scores={Dur=34}] add Move
