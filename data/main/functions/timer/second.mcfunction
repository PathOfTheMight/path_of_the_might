scoreboard players add #Second Number 1

#RngExp
#scoreboard players set #RngExpMin Number 0
#execute as @e[scores={RngExp=0..}] positioned as @s unless entity @e[tag=Skill,distance=..21] run scoreboard players reset @s RngExp

execute if score #Second Number matches 60 store success score #Second Number run function main:timer/minute
