#エンチャント付与時
#Currency個数-1
execute store result score #Count Number run data get block ~ ~ ~ Items[1].Count
scoreboard players remove #Count Number 1
execute store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get #Count Number
#スロット2に移動
execute store result block ~ ~ ~ Items[0].Slot byte 1 run scoreboard players get #2 Number

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 1.4

scoreboard players set #Success Number 0
