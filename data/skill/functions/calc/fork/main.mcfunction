scoreboard players remove @s Fork 1
#召喚
summon minecraft:armor_stand ~ ~ ~ {Tags:[New],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
#回転
tp @s ~ ~ ~ ~60 0
execute as @e[tag=New,limit=1,distance=..1] run tp @s ~ ~ ~ ~-60 0
#scoreboardコピー
scoreboard players operation @e[tag=New,limit=1,distance=..1] Pier = @s Pier
scoreboard players operation @e[tag=New,limit=1,distance=..1] Fork = @s Fork
scoreboard players operation @e[tag=New,limit=1,distance=..1] Chai = @s Chai
scoreboard players operation @e[tag=New,limit=1,distance=..1] Dur = @s Dur
scoreboard players operation @e[tag=New,limit=1,distance=..1] Rng = @s Rng
scoreboard players operation @e[tag=New,limit=1,distance=..1] RngExp = @s RngExp
#Fireball用
scoreboard players operation @e[tag=New,limit=1,distance=..1] RngIncP = @s RngIncP
scoreboard players operation @e[tag=New,limit=1,distance=..1] ProjSpd = @s ProjSpd
scoreboard players operation @e[tag=New,limit=1,distance=..1] PhD = @s PhD
scoreboard players operation @e[tag=New,limit=1,distance=..1] FiD = @s FiD
scoreboard players operation @e[tag=New,limit=1,distance=..1] CoD = @s CoD
scoreboard players operation @e[tag=New,limit=1,distance=..1] LnD = @s LnD
scoreboard players operation @e[tag=New,limit=1,distance=..1] ChD = @s ChD
#nbtコピー
data modify entity @e[tag=New,limit=1,distance=..1] ArmorItems set from entity @s ArmorItems
data modify entity @e[tag=New,limit=1,distance=..1] Tags set from entity @s Tags
