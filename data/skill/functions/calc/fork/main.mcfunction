scoreboard players remove @s Fork 1
#召喚
summon minecraft:armor_stand ~ ~ ~ {Tags:[New],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
#回転
tp @s ~ ~ ~ ~60 0
execute as @e[tag=New,limit=1,distance=..1] run tp @s ~ ~ ~ ~-60 0
#敵に持っていなければ指数付与
#execute as @e[scores={RngFlag=2..3},distance=..21] unless score @s RngExp matches 0.. run function skill:calc/range/exp_add/main
#AoE_sum計算 敵の2^指数の合計をスキルに保存
execute as @e[tag=New,limit=1,distance=..1] run function skill:calc/range/exp_sum/main
#scoreboardコピー
scoreboard players operation @e[tag=New,limit=1,distance=..1] Shotgun = @s Shotgun
scoreboard players operation @e[tag=New,limit=1,distance=..1] Pier = @s Pier
scoreboard players operation @e[tag=New,limit=1,distance=..1] Fork = @s Fork
scoreboard players operation @e[tag=New,limit=1,distance=..1] Chai = @s Chai
scoreboard players operation @e[tag=New,limit=1,distance=..1] Dur = @s Dur
scoreboard players operation @e[tag=New,limit=1,distance=..1] Rng = @s Rng
#Fireball用
scoreboard players operation @e[tag=New,limit=1,distance=..1] RngIncP = @s RngIncP
scoreboard players operation @e[tag=New,limit=1,distance=..1] SProjSpd = @s SProjSpd
scoreboard players operation @e[tag=New,limit=1,distance=..1] PhD = @s PhD
scoreboard players operation @e[tag=New,limit=1,distance=..1] FiD = @s FiD
scoreboard players operation @e[tag=New,limit=1,distance=..1] CoD = @s CoD
scoreboard players operation @e[tag=New,limit=1,distance=..1] LnD = @s LnD
scoreboard players operation @e[tag=New,limit=1,distance=..1] ChD = @s ChD
#nbtコピー
data modify entity @e[tag=New,limit=1,distance=..1] ArmorItems set from entity @s ArmorItems
data modify entity @e[tag=New,limit=1,distance=..1] Tags set from entity @s Tags
