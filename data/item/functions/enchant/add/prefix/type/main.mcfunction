#エンチャント付与フラグリセット
scoreboard players set #Flag Number 0
#係数リセット
scoreboard players set #Weight Number 100
#prefixカウント
function item:enchant/calc/count_prefix
#タイプ分岐
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{SubType:"Helmet"}}]} run function item:enchant/add/type/helmet
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{SubType:"Chestplate"}}]} run function item:enchant/add/type/chestplate

#再帰処理
execute if score #Flag Number matches 1 run function item:enchant/add/prefix/apply
execute if score #PAdd Number matches 1.. run function item:enchant/add/type/main
