#メッセージクリック時
execute unless entity @s[tag=map_control] run tellraw @s {"text":"移動先から離れている。"}
execute unless entity @s[tag=map_control] run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

execute if entity @s[tag=map_control,scores={Trigger=1..10}] run function map:across/transfer/check_generate_tick
execute if entity @s[tag=map_control,scores={Trigger=1..10},tag=!map_across] run function map:across/transfer/check_boss_battle
execute if entity @s[tag=map_control,scores={Trigger=11..}] run function map:across/transfer/check_boss_battle
