#マナ自然回復
#1s当たり回復量
scoreboard players operation #mana_regen Number = @p mana_max
scoreboard players operation #mana_regen Number *= @p mana_regen_rate
scoreboard players operation #mana_regen Number /= #100 Number
scoreboard players operation #mana_regen Number += @p mana_regen
#1tick当たり回復量=1s当たり回復量/20+ 1s当たり回復量mod20が20貯まるごとに+1
scoreboard players operation #mana_regen_mod Number = #mana_regen Number
scoreboard players operation #mana_regen Number /= #20 Number
scoreboard players operation #mana_regen_mod Number %= #20 Number
scoreboard players operation @p mana_regen_modt += #mana_regen_mod Number
execute if score @p mana_regen_modt matches 20.. run scoreboard players add #mana_regen Number 1
scoreboard players remove @p[scores={mana_regen_modt=20..}] mana_regen_modt 20

scoreboard players operation @p mana += #mana_regen Number
scoreboard players operation @p mana < @p mana_max
#マナ割合の計算・表示
scoreboard players operation #mana Number = @p mana
scoreboard players operation #mana Number *= #20 Number
scoreboard players operation #mana Number /= @p mana_max
execute unless score #mana Number = @p mana_ratio run function status:mana_ratio
