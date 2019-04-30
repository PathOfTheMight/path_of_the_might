#tick

#ライフ自然回復
function status:tick/player/life_regen
#マナ自然回復
function status:tick/player/mana_regen
#エナジーシールド自然回復
scoreboard players remove @s[scores={EsRchDur=1..}] EsRchDur 1
execute unless score @s EsRchDur matches 1.. run function status:tick/player/es_recharge
