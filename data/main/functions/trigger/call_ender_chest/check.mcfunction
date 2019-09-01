clear @s minecraft:iron_boots
replaceitem entity @s armor.feet minecraft:iron_boots{display:{Name:'{"text":"エンダーチェストを開く"}'}}

execute store success score #Flag Number unless entity @e[tag=EnderChest,limit=1,distance=..7] if block ~ ~ ~ #main:canspawn run function main:trigger/call_ender_chest/success
execute if score #Flag Number matches 0 run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1
