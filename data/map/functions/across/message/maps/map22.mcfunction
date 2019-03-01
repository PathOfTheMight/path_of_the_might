#01 イーストステップへ
execute if entity @e[tag=across01,distance=..10] run tellraw @s {"text":">>> イーストステップに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 1"}}
#02 グレーロードへ
execute if entity @e[tag=across02,distance=..10] run tellraw @s {"text":">>> グレーロードに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 2"}}
#02 グリーンフォレストへ
execute if entity @e[tag=across03,distance=..10] run tellraw @s {"text":">>> グリーンフォレストに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 3"}}
