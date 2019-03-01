#落下判定
scoreboard players operation #ID Number = @s ID
execute as @e[tag=FallCheckpoint] if score @s ID = #ID Number run tag @s add Fell
tp @s @s
execute positioned as @e[tag=Fell,limit=1] run tp @s ~ ~ ~
execute positioned as @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0
