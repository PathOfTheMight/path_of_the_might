execute if score #GlobalTier Number matches 4 run function item:enchant/roll/prefix/add_armor_life/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/prefix/add_armor_life/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/prefix/add_armor_life/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/prefix/add_armor_life/tier1

scoreboard players set #LoreCount Number 2

data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.AffixName set value "AddArmor/Life"
data modify block -40896 1 -40960 Text1 set value '[{"text":"⬤ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" アーマー","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.TierStar","entity":"00000000-0000-0000-0000-000000000000","color":"dark_gray","italic":false}]'
data modify block -40896 1 -40960 Text2 set value '[{"text":"   ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"white","italic":false},{"text":" 最大ライフ","color":"gray","italic":false}]'
