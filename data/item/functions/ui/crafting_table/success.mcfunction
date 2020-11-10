#Currency個数-1
execute store result score #Count Number run data get storage currency: Item.Count
scoreboard players remove #Count Number 1
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #Count Number
#スロット2に移動
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage item: Item
execute store result block ~ ~ ~ Items[{Slot:0b}].Slot byte 1 run scoreboard players get #2 Number

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 1.4
