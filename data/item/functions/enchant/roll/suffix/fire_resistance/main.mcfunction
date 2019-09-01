execute if score #GlobalTier Number matches 8 run function item:enchant/roll/suffix/fire_resistance/tier8
execute if score #GlobalTier Number matches 7 run function item:enchant/roll/suffix/fire_resistance/tier7
execute if score #GlobalTier Number matches 6 run function item:enchant/roll/suffix/fire_resistance/tier6
execute if score #GlobalTier Number matches 5 run function item:enchant/roll/suffix/fire_resistance/tier5
execute if score #GlobalTier Number matches 4 run function item:enchant/roll/suffix/fire_resistance/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/suffix/fire_resistance/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/suffix/fire_resistance/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/suffix/fire_resistance/tier1

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "FireResistance"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":"%","color":"white","italic":false},{"text":" 火耐性","color":"gray","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"dark_gray","italic":false}]'
