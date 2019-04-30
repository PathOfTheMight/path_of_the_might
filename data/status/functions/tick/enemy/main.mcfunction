#tick

#ライフ自然回復
scoreboard players operation @s Hp += @s HpRgn
scoreboard players operation @s Hp < @s MaxHp

#エナジーシールド自然回復
scoreboard players remove @s[scores={EsRchDur=1..}] EsRchDur 1
execute if score @s EsRchDur matches 0 run function status:es_recharge
