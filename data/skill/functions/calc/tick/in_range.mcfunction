#ドーナツhit回避
#execute if entity @s[tag=Donut,tag=SkillP] run function skill:calc/range/donut/player
#execute if entity @s[tag=Donut,tag=SkillE] run function skill:calc/range/donut/enemy

#スキルに持っていなければ指数付与
execute unless score @s RngExp matches 0.. run function skill:calc/range/set_exp/hit

#多段hit回避 スキルの指数と合計が一致した敵のRngFlagを1に
function skill:calc/range/cancel/main

execute if entity @e[scores={RngFlag=2},distance=..21,limit=1] run function skill:calc/tick/damage
