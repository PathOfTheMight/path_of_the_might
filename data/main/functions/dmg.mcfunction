#scoreboard players operation @s RngSum1 = @s RngSumTemp1
#scoreboard players operation @s RngSum2 = @s RngSumTemp2
#scoreboard players operation @s RngSum3 = @s RngSumTemp3
#scoreboard players operation @s RngSum4 = @s RngSumTemp4
#scoreboard players operation @s RngSum5 = @s RngSumTemp5
#scoreboard players operation @s RngSum6 = @s RngSumTemp6
#scoreboard players operation @s RngSum7 = @s RngSumTemp7
#scoreboard players operation @s RngSum8 = @s RngSumTemp8

#死亡時
execute if entity @s[scores={Hp=..0}] at @s run playsound minecraft:entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.5

kill @s[scores={Hp=..0}]
#被ダメージ演出
effect give @s minecraft:instant_health 1 30 true
tag @s[tag=Damaged] remove Damaged
