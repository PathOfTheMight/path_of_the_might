execute if score #GlobalTier Number matches 10 run function item:enchant/roll/suffix/intteligence/tier10
execute if score #GlobalTier Number matches 9 run function item:enchant/roll/suffix/intteligence/tier9
execute if score #GlobalTier Number matches 8 run function item:enchant/roll/suffix/intteligence/tier8
execute if score #GlobalTier Number matches 7 run function item:enchant/roll/suffix/intteligence/tier7
execute if score #GlobalTier Number matches 6 run function item:enchant/roll/suffix/intteligence/tier6
execute if score #GlobalTier Number matches 5 run function item:enchant/roll/suffix/intteligence/tier5
execute if score #GlobalTier Number matches 4 run function item:enchant/roll/suffix/intteligence/tier4
execute if score #GlobalTier Number matches 3 run function item:enchant/roll/suffix/intteligence/tier3
execute if score #GlobalTier Number matches 2 run function item:enchant/roll/suffix/intteligence/tier2
execute if score #GlobalTier Number matches 1 run function item:enchant/roll/suffix/intteligence/tier1

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "Intteligence"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" INT","color":"gray","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"dark_gray","italic":false}]'
