#マップ生成中のとき
execute if score #GenerateTick Number matches 1..64 run tellraw @s {"text":"*マップ生成中のため移動できなかった。"}
execute if score #GenerateTick Number matches 1..64 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

#マップ生成中でないとき
execute if score #GenerateTick Number matches 65 run function map:across/transfer/check_boss_battle

execute if score #GenerateTick Number matches 65 run tag @s add map_across