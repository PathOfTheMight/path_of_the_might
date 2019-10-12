data modify block -40691 2 -40700 RecordItem set from block ~ ~ ~ Items[0]
data modify block -40691 1 -40700 RecordItem set from block ~ ~ ~ Items[1]
function item:enchant/main

execute if score #Success Number matches 1 run function item:ui/crafting_table/success
