execute unless entity @a[distance=..6,limit=1] run data merge entity @s {Duration:50}
execute unless entity @a[distance=..6,limit=1] run setblock ~ ~ ~ minecraft:air

execute if entity @s[tag=EnderChest] as @a[distance=..7] run function item:ui/ender_chest/tick
