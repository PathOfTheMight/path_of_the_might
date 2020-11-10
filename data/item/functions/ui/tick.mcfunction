execute unless entity @a[distance=..6,limit=1] run function item:ui/destroy

execute if entity @s[tag=EnderChest] as @a[distance=..7] run function item:ui/ender_chest/main
execute if entity @s[tag=CraftingTable] if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:1b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} run function item:ui/crafting_table/check
