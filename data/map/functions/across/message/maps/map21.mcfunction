#01 ブルーオーシャンへ
execute if entity @e[tag=across01,distance=..10] run tellraw @s {"text":">>> ブルーオーシャンに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 1"}}
#02 クラブコリドーへ
execute if entity @e[tag=across02,distance=..10] run tellraw @s {"text":">>> クラブコリドーに進む","clickEvent":{"action":"run_command","value":"/trigger Trigger set 2"}}
