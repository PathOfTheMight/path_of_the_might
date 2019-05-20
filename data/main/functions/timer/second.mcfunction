scoreboard players add #Second Number 1

#AITime
scoreboard players add * AITime 1
execute as @a positioned as @s run scoreboard players set @e[distance=..32,scores={AITime=0..}] AITime 0

execute if score #Second Number matches 60 store success score #Second Number run function main:timer/minute
