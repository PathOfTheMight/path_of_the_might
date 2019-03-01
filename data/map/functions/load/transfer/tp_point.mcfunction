 tp @s ~ ~ ~
scoreboard players set @s transfer_tick 65
function map:load/tellraw/allocate/main
kill @e[tag=Transferring,limit=1,sort=nearest]
