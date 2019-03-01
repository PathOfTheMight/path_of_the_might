scoreboard players operation #TickMod Number = @s transfer_tick
scoreboard players operation #TickMod Number %= #16 Number
execute if score #TickMod Number matches 0 run tp @s ~ ~ ~64 0 0
execute if score #TickMod Number matches 1..7 run tp @s ~64 ~ ~ -90 0
execute if score #TickMod Number matches 8 run tp @s ~ ~ ~64 0 0
execute if score #TickMod Number matches 9..15 run tp @s ~-64 ~ ~ 90 0

scoreboard players add @s transfer_tick 1