#P空き:P S空き:S
execute if score #PTotal Number matches 0 run scoreboard players set #PAdd Number 1
execute if score #STotal Number matches 0 run scoreboard players set #SAdd Number 1

execute if score #PAdd Number matches 1 run scoreboard players set #Success Number 1
execute if score #SAdd Number matches 1 run scoreboard players set #Success Number 1
