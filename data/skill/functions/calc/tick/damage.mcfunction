#スコアに保存
execute if score #DmgVer Number matches 1 run function skill:calc/damage/store/normal
execute if score #DmgVer Number matches 2 run function skill:calc/damage/store/min
execute if score #DmgVer Number matches 3 run function skill:calc/damage/store/max
function skill:calc/damage/store/main
#ヒット、ダメージ計算 as 3
function skill:calc/hit/main
