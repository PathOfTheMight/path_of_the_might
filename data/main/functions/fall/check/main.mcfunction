#落下判定
scoreboard players set #CheckFall Number 0
#cave_air:着地 white_stained_glass
execute if block ~ ~0.0625 ~ #main:void run scoreboard players set #CheckFall Number 1
#void_air:空中 light_blue_stained_glass
execute if entity @s[nbt={OnGround:1b}] run function main:fall/check/ground
#water
execute if entity @s[tag=!FluidMap] run function main:fall/check/fluid

execute if score #CheckFall Number matches 1 run function main:fall/load_checkpoint
execute unless score #CheckFall Number matches 1 if block ~ ~-0.9375 ~ #main:solid_block if entity @s[nbt={OnGround:1b}] run function main:fall/set_checkpoint
