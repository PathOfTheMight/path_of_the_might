scoreboard players set #RandMod Number 5
function main:rand

execute if score #RandMod Number matches 0 run data modify entity @s ArmorItems[0].tag.AI set from entity @s ArmorItems[0].tag.AIFire
execute if score #RandMod Number matches 1 run data modify entity @s ArmorItems[0].tag.AI set from entity @s ArmorItems[0].tag.AICold
execute if score #RandMod Number matches 2 run data modify entity @s ArmorItems[0].tag.AI set from entity @s ArmorItems[0].tag.AILightning
execute if score #RandMod Number matches 3..4 run data modify entity @s ArmorItems[0].tag.AI set from entity @s ArmorItems[0].tag.AICharge

execute if score #RandMod Number matches 0 anchored eyes run particle minecraft:flame ^ ^ ^0.3 0.1 0.02 0.1 0.05 30 force
execute if score #RandMod Number matches 1 anchored eyes run particle minecraft:dust 2 1 90000000 2 ^ ^ ^0.3 0.4 0.2 0.4 1 20 force
execute if score #RandMod Number matches 2 anchored eyes run particle minecraft:dust 1.1 1 0 2 ^ ^ ^0.3 0.4 0.2 0.4 1 20 force
execute if score #RandMod Number matches 3..4 run data modify entity @s ArmorItems[3].id set value "minecraft:paper"
execute if score #RandMod Number matches 0 run playsound minecraft:entity.blaze.ambient master @a[distance=..16] ~ ~ ~ 2 1.6
execute if score #RandMod Number matches 1 run playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 2 1
execute if score #RandMod Number matches 2 run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..16] ~ ~ ~ 2 2
execute if score #RandMod Number matches 2 run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 2 1.5
execute if score #RandMod Number matches 3..4 run playsound minecraft:item.book.page_turn master @a[distance=..16] ~ ~ ~ 2 2
