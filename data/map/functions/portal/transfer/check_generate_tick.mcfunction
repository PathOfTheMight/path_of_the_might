#マップ生成中のとき
execute if score #GenerateTick Number matches 1..64 run tellraw @s {"text":"*マップ生成中のため移動できなかった。"}
execute if score #GenerateTick Number matches 1..64 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

#マップ生成中でないとき
execute unless score #GenerateTick Number matches 1..64 run function map:portal/transfer/warp
