#落下用チェックポイント生成
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[FallCheckpoint,New],Duration:2100000000}

scoreboard players operation #ID Number = @s ID
execute as @e[tag=FallCheckpoint] if score @s ID = #ID Number run kill @s
scoreboard players operation @e[tag=New,limit=1] ID = @s ID

tag @e[tag=New,limit=1] remove New
