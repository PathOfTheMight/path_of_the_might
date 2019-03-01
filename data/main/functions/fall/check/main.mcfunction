#落下判定
scoreboard players set #CheckFall Number 0
#cave_air:着地
#void_air:空中
execute if block ~ ~ ~ minecraft:void_air run scoreboard players set #CheckFall Number 1
execute if entity @s[nbt={OnGround:1b}] run function main:fall/check/void
execute if entity @s[tag=!FluidMap] run function main:fall/check/fluid

execute if score #CheckFall Number matches 1 run function main:fall/load_checkpoint
execute unless score #CheckFall Number matches 1 if block ~ ~-1 ~ #main:solid_block if entity @s[nbt={OnGround:1b}] run function main:fall/set_checkpoint
