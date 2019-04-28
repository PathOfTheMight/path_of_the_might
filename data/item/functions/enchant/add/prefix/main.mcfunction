#フラグリセット
scoreboard players set #GlobalTier Number 0
scoreboard players set #AffixValue Number 0
scoreboard players set #AffixValue2 Number 0
scoreboard players set #LoreCount Number 1
#1~ItemLevelの乱数生成
scoreboard players operation #RandMod Number = #ItemLevel Number
function main:rand
scoreboard players operation #AffixLevel Number = #RandMod Number
scoreboard players add #AffixLevel Number 1
#prefixカウント
function item:enchant/calc/count_prefix
#タイプ分岐
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{SubType:"Helmet"}}]} run function item:enchant/add/prefix/type/helmet/main
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{SubType:"Chestplate"}}]} run function item:enchant/add/prefix/type/chestplate/main
#apply
execute if score #GlobalTier Number matches 1.. run function item:enchant/add/prefix/apply/main
#再帰処理
execute if score #PAdd Number matches 1.. run function item:enchant/add/prefix/main
