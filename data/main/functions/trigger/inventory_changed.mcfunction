#drop用
execute store result score @s SelectedItem run data get entity @s SelectedItem.Count 1
#helmet
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Head:1b}}]}] run function main:trigger/open_menu
#chestplate
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run function main:trigger/call_passive_tree
#leggings 
execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run function main:trigger/call_crafting_table/check
#boots 
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run function main:trigger/call_ender_chest/check
#オフハンド swap
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{Offhand:1b}}]}] run function main:trigger/swap

advancement revoke @s only main:inventory_changed
