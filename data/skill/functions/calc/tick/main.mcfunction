#tick 個別処理
execute if entity @s[tag=UniqueTick] run function skill:calc/tick/unique

#hit判定 敵のRngFlagを2に
function skill:calc/range/hit/main
execute if entity @s[scores={ProjSpd=300..}] positioned ^ ^ ^3 run function skill:calc/range/hit/main

#hit時
execute if entity @e[scores={RngFlag=2},distance=..21,limit=1] at @s run function skill:calc/tick/in_range
