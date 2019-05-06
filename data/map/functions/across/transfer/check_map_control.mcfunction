#メッセージクリック時
execute unless entity @s[tag=MapControl] run tellraw @s {"text":"移動先から離れている。"}
execute unless entity @s[tag=MapControl] run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1

execute if entity @s[tag=MapControl,scores={Trigger=1..10}] run function map:across/transfer/check_generate_tick
execute if entity @s[tag=MapControl,scores={Trigger=1..10},tag=!MapAcross] run function map:across/transfer/check_boss_battle
execute if entity @s[tag=MapControl,scores={Trigger=11..}] run function map:across/transfer/check_boss_battle
