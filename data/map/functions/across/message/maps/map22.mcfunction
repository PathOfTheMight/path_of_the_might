#01 イーストステップへ
execute positioned -36883 61 -36751 run tellraw @s[distance=..10] {"text":">>> イーストステップに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 1"}}
#02 グレーロードへ
execute positioned -36617 60 -36882 run tellraw @s[distance=..25] {"text":">>> グレーロードに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 2"}}
#02 グリーンフォレストへ
execute if entity @e[tag=across03,distance=..10] run tellraw @s {"text":">>> グリーンフォレストに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 3"}}
