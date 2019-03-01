execute if score @s transfer_tick matches 1 run function map:load/tp_init/allocate/main

scoreboard players operation #ID Number = @s ID
execute as @e[tag=TransferPoint] if score @s ID = #ID Number positioned as @s run tag @s add Transferring
execute positioned as @e[tag=Transferring,limit=1] run function map:load/transfer/tp_point

execute if score @s transfer_tick matches 1..64 positioned as @s run function map:load/transfer/move
