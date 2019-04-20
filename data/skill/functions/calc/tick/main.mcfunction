#tick 個別処理
function skill:calc/tick/before

#hit判定 敵のRngFlagを3に
execute if entity @s[tag=SkillP] run function skill:calc/range/hit/player/main
execute if entity @s[tag=SkillE] run function skill:calc/range/hit/enemy/main

#再hit処理 AoE_sumをリセット
execute if entity @e[scores={RngFlag=2},distance=..21,limit=1] at @s run function skill:calc/tick/in_range

#tick 個別処理
function skill:calc/tick/after
