#プレイヤー死亡時
gamemode spectator @s
title @s title [{"text":"  You Are Dead!  ","color":"red","underlined":true}]
tellraw @s [{"text":">>> 5秒後 スニークでリスポーン"}]
execute positioned as @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 2
scoreboard players set @s WaitTimeH 10000
tag @s remove Player
tag @s add Dead
