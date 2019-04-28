scoreboard players operation #EffMaxHp Number = @s MaxHpH
execute if score #Temp RedStnThold matches 1.. run function skill:calc/stun/threshold/main

scoreboard players set #StnCha Number 200
scoreboard players operation #StnCha Number *= #Temp D
scoreboard players operation #StnCha Number /= #EffMaxHp Number

scoreboard players set #RandMod Number 100
function main:rand

execute if score #StnCha Number >= #RandMod Number positioned as @s anchored eyes run function skill:calc/stun/apply
