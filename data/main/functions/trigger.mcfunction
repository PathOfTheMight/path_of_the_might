#トリガースコア
execute if score @s Trigger matches 1..999 run function map:across/transfer/check_map_control
execute if score @s Trigger matches 1000..1999 run function map:portal/transfer/check_portal

scoreboard players reset @s Trigger
scoreboard players enable @s Trigger
