execute unless entity @a[distance=..6,limit=1] run data merge entity @s {Duration:50}
execute unless entity @a[distance=..6,limit=1] run setblock ~ ~ ~ minecraft:air destroy

execute if entity @s[tag=EnderChest] as @a[distance=..7] run function item:ui/ender_chest/tick
execute if entity @s[tag=CraftingTable] if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:1b}]} run function item:ui/crafting_table/check
