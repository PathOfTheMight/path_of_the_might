execute if score #GlobalTier Number matches 4 run function item:enchant/roll/prefix/add_armor_life/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/prefix/add_armor_life/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/prefix/add_armor_life/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/prefix/add_armor_life/tier1

scoreboard players set #LoreCount Number 2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddArmor_Life"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" アーマー","color":"gray","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"dark_gray","italic":false}]'
data modify block -40692 1 -40700 Text2 set value '[{"text":"   ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"white","italic":false},{"text":" 最大ライフ","color":"gray","italic":false}]'
