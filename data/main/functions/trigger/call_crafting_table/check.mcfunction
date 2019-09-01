clear @s minecraft:leather_leggings
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"作業台を開く"}'}}

execute store success score #Flag Number unless entity @e[tag=CraftingTable,limit=1,distance=..7] if block ~ ~ ~ #main:canspawn run function main:trigger/call_crafting_table/success
execute if score #Flag Number matches 0 run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1
