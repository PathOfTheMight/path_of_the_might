scoreboard players set #RandMod Number 2
function main:rand

##P空き:P S空き:S PS空き:1/2:P 1/2:S
execute if score #PTotal Number matches 3 if score #STotal Number matches ..2 run scoreboard players set #PAdd Number 1
execute if score #PTotal Number matches ..2 if score #STotal Number matches 3 run scoreboard players set #SAdd Number 1
execute if score #PTotal Number matches ..2 if score #STotal Number matches ..2 if score #RandMod Number matches 0 run scoreboard players set #PAdd Number 1
execute if score #PTotal Number matches ..2 if score #STotal Number matches ..2 if score #RandMod Number matches 1 run scoreboard players set #SAdd Number 1

execute if score #PAdd Number matches 1 run scoreboard players set #Success Number 1
execute if score #SAdd Number matches 1 run scoreboard players set #Success Number 1
