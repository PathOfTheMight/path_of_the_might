#tick

#ライフ自然回復
execute if score @s HpRgnH matches -2100000000.. run function status:tick/life_regen

#マナ自然回復
execute if score @s MpRgnH matches -2100000000.. run function status:tick/mana_regen

#エナジーシールド自然回復
scoreboard players remove @s[scores={EsRchDur=1..}] EsRchDur 1
execute if score @s EsRchDur matches 0 run function status:es_recharge
