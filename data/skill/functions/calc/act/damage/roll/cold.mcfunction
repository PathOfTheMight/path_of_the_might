#ダメージロール
scoreboard players set #RandMod Number 2000
function main:rand
scoreboard players operation #CurD Number = #Temp CoDMax
scoreboard players operation #CurD Number -= #Temp CoDMin
scoreboard players operation #CurD Number *= #RandMod Number
scoreboard players operation #CurD Number /= #2000 Number
scoreboard players operation #CurD Number += #Temp CoDMin
#Inc
scoreboard players operation #CurDIncP Number = #Temp CoDIncP
#コンバート
execute if score #Temp CoConvFlag matches 1 run function skill:calc/act/damage/convert/cold/main
#Inc
execute unless score #Temp CoConvFlag matches 1 run function skill:calc/act/damage/increase/main
execute unless score #Temp CoConvFlag matches 1 run scoreboard players operation #Temp CoD += #CurD Number
