#フラグリセット
scoreboard players set #LocalTier Number 0
scoreboard players set #CurrentTier Number 0
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
execute if data block -40691 2 -40700 RecordItem.tag.Helmet run function item:enchant/add/prefix/type/armor/helmet/main
execute if data block -40691 2 -40700 RecordItem.tag.Chestplate run function item:enchant/add/prefix/type/armor/chestplate/main
execute if data block -40691 2 -40700 RecordItem.tag.Sword1h run function item:enchant/add/prefix/type/weapon/sword_1h

#apply
execute if score #CurrentTier Number matches 1.. run function item:enchant/add/prefix/apply/main
#再帰処理
execute if score #PAdd Number matches 1.. run function item:enchant/add/prefix/main
