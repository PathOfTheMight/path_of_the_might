#01 トロピカルビーチへ
execute if entity @e[tag=across01,distance=..10] run tellraw @s {"text":">>> トロピカルビーチに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 1"}}
#11 水色の島へ
execute if entity @e[tag=across02,distance=..10] run tellraw @s {"text":">>> 水色の島に進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 2"}}
#12 赤の島へ
execute if entity @e[tag=across03,distance=..10] run tellraw @s {"text":">>> 赤の島に進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 3"}}
