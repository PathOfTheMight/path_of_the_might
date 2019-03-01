#ドーナツhit回避 count?
#execute if entity @s[tag=Donut,tag=SkillP] run function skill:calc/range/donut/player
#execute if entity @s[tag=Donut,tag=SkillE] run function skill:calc/range/donut/enemy

#多段hit回避 敵の指数とスキルの合計が一致した敵のRngFlagを2に
function skill:calc/range/cancel/main
#ショットガン回避 set 2
execute if entity @s[scores={Shotgun=1..}] run function skill:calc/range/shotgun/main
#巨大敵ショットガン回避 set 2
#execute if entity @e[scores={size=1..,RngFlag=3}] run function skill:calc/range/hit/Shotgun_large0
execute if entity @e[scores={RngFlag=3},distance=..21,limit=1] run function skill:calc/tick/damage

#敵に持っていなければ指数付与
execute as @e[scores={RngFlag=2..3},distance=..21] unless score @s RngExp matches 0.. run function skill:calc/range/exp_add/main

#AoE_sum計算 敵の2^指数の合計をスキルに保存
function skill:calc/range/exp_sum/main

#set 1
scoreboard players reset @e[scores={RngFlag=2..3},distance=..21] RngFlag
