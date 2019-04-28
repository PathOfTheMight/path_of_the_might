execute if score #GlobalTier Number matches 10 run function item:enchant/roll/suffix/accuracy/tier10
execute if score #GlobalTier Number matches 9 run function item:enchant/roll/suffix/accuracy/tier9
execute if score #GlobalTier Number matches 8 run function item:enchant/roll/suffix/accuracy/tier8
execute if score #GlobalTier Number matches 7 run function item:enchant/roll/suffix/accuracy/tier7
execute if score #GlobalTier Number matches 6 run function item:enchant/roll/suffix/accuracy/tier6
execute if score #GlobalTier Number matches 5 run function item:enchant/roll/suffix/accuracy/tier5
execute if score #GlobalTier Number matches 4 run function item:enchant/roll/suffix/accuracy/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/suffix/accuracy/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/suffix/accuracy/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/suffix/accuracy/tier1

data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.AffixName set value "Accuracy"
data modify block -40896 1 -40960 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" 命中","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.TierStar","entity":"00000000-0000-0000-0000-000000000000","color":"dark_gray","italic":false}]'