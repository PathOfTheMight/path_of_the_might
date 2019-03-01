#1s当たり回復量
scoreboard players operation #es_regen Number = @p es_max
scoreboard players operation #es_regen Number *= @p es_regen_rate
scoreboard players operation #es_regen Number /= #100 Number
#scoreboard players operation #es_regen Number += @p es_regen
#1tick当たり回復量=1s当たり回復量/20+ 1s当たり回復量mod20が20貯まるごとに+1
scoreboard players operation #es_regen_mod Number = #es_regen Number
scoreboard players operation #es_regen Number /= #20 Number
scoreboard players operation #es_regen_mod Number %= #20 Number
scoreboard players operation @p es_regen_modt += #es_regen_mod Number
execute if score @p es_regen_modt matches 20.. run scoreboard players add #es_regen Number 1
scoreboard players remove @p[scores={es_regen_modt=20..}] es_regen_modt 20

scoreboard players operation @p es += #es_regen Number
scoreboard players operation @p es < @p es_max
