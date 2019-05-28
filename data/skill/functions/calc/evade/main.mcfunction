#HitChance(*10000) = Acc*10000/((Eva/4)^0.8+Acc)
#EvaEntropy(*10000) += HitChance 10000を超えるとhit

###(Eva/4)^0.8 の近似
#0<Eva<1500 のとき (Eva/4)^0.8 = Eva/13
#1500<=Eva<10000 のとき (Eva/4)^0.8 = Eva/21+44
#10000<=Eva のとき (Eva/4)^0.8 = Eva/30+187
scoreboard players operation #Eva0.8+Acc Number = @s Eva
execute if score @s Eva matches ..1499 run scoreboard players operation #Eva0.8+Acc Number /= #13 Number
execute if score @s Eva matches 1500..9999 run scoreboard players operation #Eva0.8+Acc Number /= #21 Number
execute if score @s Eva matches 1500..9999 run scoreboard players operation #Eva0.8+Acc Number += #44 Number
execute if score @s Eva matches 10000.. run scoreboard players operation #Eva0.8+Acc Number /= #30 Number
execute if score @s Eva matches 10000.. run scoreboard players operation #Eva0.8+Acc Number += #187 Number
#((Eva/4)^0.8+Acc) (分母)
scoreboard players operation #Eva0.8+Acc Number += #Temp Acc
#HitCha = #Acc * 100 / #Eva0.8+Acc 
scoreboard players operation #HitCha Number = #Temp Acc
scoreboard players operation #HitCha Number *= #10000 Number
scoreboard players operation #HitCha Number /= #Eva0.8+Acc Number
#EvaEntropyは6秒保持 0でリセット
#execute unless entity @s[scores={EvaEntropyDur=1..}] run function skill:calc/evade/rand
#scoreboard players set @s EvaEntropyDur 120
#10000を超えるとhit -10000
scoreboard players operation @s EvaEntropy += #HitCha Number
execute if entity @s[scores={EvaEntropy=0..9999}] run playsound minecraft:entity.bat.takeoff master @a[distance=..16] ~ ~ ~ 0.5 2
execute if entity @s[scores={EvaEntropy=10000..}] run function skill:calc/dodge/attack/check
scoreboard players remove @s[scores={EvaEntropy=10000..}] EvaEntropy 10000
