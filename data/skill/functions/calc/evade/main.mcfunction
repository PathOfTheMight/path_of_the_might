#hit_chance(*10000) = accu*10000/((Eva/4)^0.8+accu)
#entropy(*10000) += hit_chance 10000を超えるとhit

###(Eva/4)^0.8 の近似
#0<Eva<1500 のとき (Eva/4)^0.8 = Eva/13
#1500<=Eva<10000 のとき (Eva/4)^0.8 = Eva/21+44
#10000<=Eva のとき (Eva/4)^0.8 = Eva/30+187
scoreboard players operation #Eva0.8+accu Number = @s Eva
execute if score @s Eva matches ..1499 run scoreboard players operation #Eva0.8+accu Number /= #13 Number
execute if score @s Eva matches 1500..9999 run scoreboard players operation #Eva0.8+accu Number /= #21 Number
execute if score @s Eva matches 1500..9999 run scoreboard players operation #Eva0.8+accu Number += #44 Number
execute if score @s Eva matches 10000.. run scoreboard players operation #Eva0.8+accu Number /= #30 Number
execute if score @s Eva matches 10000.. run scoreboard players operation #Eva0.8+accu Number += #187 Number
#((Eva/4)^0.8+accu) (分母)
scoreboard players operation #Eva0.8+accu Number += #accu Number
#hit_cha = #accu * 100 / #Eva0.8+accu 
scoreboard players operation #hit_cha Number = #accu Number
scoreboard players operation #hit_cha Number *= #10000 Number
scoreboard players operation #hit_cha Number /= #Eva0.8+accu Number
#entropyは6秒保持 0でリセット
execute unless entity @s[scores={entropy_dur=1..}] run function skill:calc/evade/rand
scoreboard players set @s entropy_dur 120
#10000を超えるとhit -10000
scoreboard players operation @s entropy += #hit_cha Number
execute if entity @s[scores={entropy=0..9999}] run playsound minecraft:entity.bat.takeoff master @a[distance=..16] ~ ~ ~ 1 2
#execute if entity @s[scores={entropy=0..9999}] run say 攻撃を回避した!
execute if entity @s[scores={entropy=10000..}] run function skill:calc/dodge/attack/check
scoreboard players remove @s[scores={entropy=10000..}] entropy 10000
