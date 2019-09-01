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
#suffixカウント
function item:enchant/calc/count_suffix
#タイプ分岐
execute if data block -40691 2 -40700 RecordItem.tag.Helmet run function item:enchant/add/suffix/type/helmet/main
execute if data block -40691 2 -40700 RecordItem.tag.Chestplate run function item:enchant/add/suffix/type/chestplate/main
#apply
execute if score #GlobalTier Number matches 1.. run function item:enchant/add/suffix/apply/main
#再帰処理
execute if score #SAdd Number matches 1.. run function item:enchant/add/suffix/main
