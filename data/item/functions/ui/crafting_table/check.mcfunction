data modify storage item: Item set from block ~ ~ ~ Items[0]
data modify storage currency: Item set from block ~ ~ ~ Items[1]
execute if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:1b}]} run function item:enchant/main

execute if score #Success Number matches 1 run function item:ui/crafting_table/success
