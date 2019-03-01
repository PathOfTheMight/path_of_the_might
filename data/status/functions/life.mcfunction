#ライフ自然回復
#1s当たり回復量
scoreboard players operation #life_regen Number = @p life_max
scoreboard players operation #life_regen Number *= @p life_regen_rate
scoreboard players operation #life_regen Number /= #100 Number
scoreboard players operation #life_regen Number += @p life_regen
#1tick当たり回復量=1s当たり回復量/20+ 1s当たり回復量mod20が20貯まるごとに+1
scoreboard players operation #life_regen_mod Number = #life_regen Number
scoreboard players operation #life_regen Number /= #20 Number
scoreboard players operation #life_regen_mod Number %= #20 Number
scoreboard players operation @p life_regen_modt += #life_regen_mod Number
execute if score @p life_regen_modt matches 20.. run scoreboard players add #life_regen Number 1
scoreboard players remove @p[scores={life_regen_modt=20..}] life_regen_modt 20

scoreboard players operation @p life += #life_regen Number
scoreboard players operation @p life < @p life_max
#ライフ割合の計算・表示
scoreboard players operation #life Number = @p life
scoreboard players operation #life Number *= #20 Number
scoreboard players operation #life Number /= @p life_max
execute unless score #life Number = @p life_ratio run function status:life_ratio

effect give @p minecraft:instant_health 1 6 true
execute if score @p life_ratio matches 0 run effect give @p minecraft:poison 1 0 true
