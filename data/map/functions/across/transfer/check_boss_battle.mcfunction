#ボス戦中のとき
execute if entity @s[tag=BossBattle] run tellraw @s {"text":"戦闘中に移動する隙は見せられない！"}
execute if entity @s[tag=BossBattle] run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1

#ボス戦中でないとき
execute if entity @s[tag=!BossBattle] run function map:across/transfer/allocate/main
