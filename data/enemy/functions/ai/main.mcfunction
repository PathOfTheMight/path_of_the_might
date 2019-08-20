scoreboard players reset #Temp
scoreboard players set #Flag Number 0
execute store result score #WaitTimeH Number run data get entity @s ArmorItems[0].tag.AI[0]

execute if entity @s[tag=Animal] run function enemy:ai/animal/main
execute if entity @s[tag=Daemon] run function enemy:ai/daemon/main
execute if entity @s[tag=Humanoid] run function enemy:ai/humanoid/main
execute if entity @s[tag=Undead] run function enemy:ai/undead/main

execute if score #Flag Number matches 0 run function enemy:ai/failure
execute if score #Flag Number matches 1 run function enemy:ai/success
execute if score #Flag Number matches 2 run function enemy:ai/skip
