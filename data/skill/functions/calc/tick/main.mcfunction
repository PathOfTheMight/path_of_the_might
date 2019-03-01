#RngFlag 0:0hit  1:1回でもhit  2:範囲内にいる  3:ダメージ計算する
#範囲内の敵に256番までの指数を付与 RngExp
#スキルに2^指数の合計を付与 RngSumX

#tick 個別処理
function skill:calc/tick/before

#hit判定 敵のRngFlagを3に
execute if entity @s[tag=SkillP] run function skill:calc/range/hit/player/main
execute if entity @s[tag=SkillE] run function skill:calc/range/hit/enemy/main
#巨大敵hit判定 巨大敵のRngFlagを3に
#execute if entity @e[scores={size=1..},distance=..20] run function skill:calc/range/hit/hit_large0

#再hit処理 AoE_sumをリセット
execute if entity @e[scores={RngFlag=3},distance=..21,limit=1] at @s run function skill:calc/tick/in_range

#tick 個別処理
function skill:calc/tick/after

