scoreboard players add #Minute Number 1
execute if score #Minute Number matches 60 store success score #Minute Number run function main:timer/hour

#FallCheckpoint
execute as @e[tag=FallCheckpoint] unless score @s ID matches -2100000000.. run kill @s
#Map_timer
scoreboard players add #WorldTimer Number 1
execute as @a run function map:load/map_timer/sync/allocate/main
