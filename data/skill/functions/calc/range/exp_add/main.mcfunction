#敵に持っていなければ指数付与
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 0..30 run function skill:calc/range/exp_add/score1
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 31..61 run function skill:calc/range/exp_add/score2
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 62..92 run function skill:calc/range/exp_add/score3
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 93..123 run function skill:calc/range/exp_add/score4
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 124..154 run function skill:calc/range/exp_add/score5
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 155..185 run function skill:calc/range/exp_add/score6
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 186..216 run function skill:calc/range/exp_add/score7
execute unless score @s RngExp matches 0.. if score #RngExpMin Number matches 217..247 run function skill:calc/range/exp_add/score8
