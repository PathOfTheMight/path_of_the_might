execute if score #WaitTimeH Number matches 2000 run effect give @s minecraft:speed 1 5 true
execute if score #WaitTimeH Number matches 2001 run data modify entity @s ArmorItems[3].id set value "minecraft:book"
scoreboard players set #Flag Number 2
