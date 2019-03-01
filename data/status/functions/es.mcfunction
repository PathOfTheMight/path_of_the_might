#es_recharge_duri(init) = 40000/(100+es_recharge_fast) (装備更新時計算)  base:40tick
#es_recharge_dur(current)
#es_recharge_fast _%リチャージ開始が短縮
#es_regen_rate = (100+es_recharge_inc)/5 (装備更新時計算) base:20% 
#es_regen_inc _%リチャージ速度が増加
scoreboard players remove @s[scores={es_recharge_dur=1..}] es_recharge_dur 1
#es_recharge_dur が0のときES自然回復
execute if score @s es_recharge_dur matches 0 run function status:es_recharge

#ES割合の計算・表示
scoreboard players operation #es Number = @p es
scoreboard players operation #es Number *= #20 Number
scoreboard players operation #es Number /= @p es_max
execute unless score #es Number = @p es_ratio run function status:es_ratio
