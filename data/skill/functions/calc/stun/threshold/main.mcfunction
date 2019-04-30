#RedStnThold <=75 => StnShold = 100 - RedStnThold
#RedStnThold >75 => StnShold = 75 + (RedStnThold - 75) / (RedStnThold - 50)

execute if score #Temp RedStnThold matches ..75 run scoreboard players set #StnThold Number 100
execute if score #Temp RedStnThold matches ..75 run scoreboard players operation #StnThold Number -= #Temp RedStnThold

execute if score #Temp RedStnThold matches 76.. run function skill:calc/stun/max_thrEsold

scoreboard players operation #EffMaxHp Number *= #StnThold Number
scoreboard players operation #EffMaxHp Number /= #100 Number
