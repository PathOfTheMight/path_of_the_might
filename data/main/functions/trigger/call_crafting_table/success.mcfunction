setblock ~ ~ ~ minecraft:smoker
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2100000000,Tags:[UI,CraftingTable]}
playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 2
