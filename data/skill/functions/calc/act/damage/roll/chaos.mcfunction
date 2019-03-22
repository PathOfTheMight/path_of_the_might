#ダメージロール
scoreboard players operation #RandMod Number = #ChDMax Number
scoreboard players operation #RandMod Number -= #ChDMin Number
function main:rand
scoreboard players operation #CurD Number = #RandMod Number
#Inc
function skill:calc/act/damage/convert/chaos/main
