execute if score #GlobalTier Number matches 9 run function item:enchant/roll/suffix/strength/tier9
execute if score #GlobalTier Number matches 8 run function item:enchant/roll/suffix/strength/tier8
execute if score #GlobalTier Number matches 7 run function item:enchant/roll/suffix/strength/tier7
execute if score #GlobalTier Number matches 6 run function item:enchant/roll/suffix/strength/tier6
execute if score #GlobalTier Number matches 5 run function item:enchant/roll/suffix/strength/tier5
execute if score #GlobalTier Number matches 4 run function item:enchant/roll/suffix/strength/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/suffix/strength/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/suffix/strength/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/suffix/strength/tier1

data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.AffixName set value "Strength"
data modify block -40896 1 -40960 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" STR","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.TierStar","entity":"00000000-0000-0000-0000-000000000000","color":"dark_gray","italic":false}]'