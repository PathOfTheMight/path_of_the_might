#ボス戦中のとき
execute if entity @s[tag=boss_battle] run tellraw @s {"text":"戦闘中に移動する隙は見せられない！"}
execute if entity @s[tag=boss_battle] run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

#ボス戦中でないとき
execute if entity @s[tag=!boss_battle] run function map:across/transfer/allocate/main
