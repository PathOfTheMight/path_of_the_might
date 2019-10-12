execute if score #AffixLevel Number matches 36..59 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 60.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 2
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 2 run scoreboard players set #AffixValue Number -18
execute if score #CurrentTier Number matches 1 run scoreboard players set #AffixValue Number -32

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AttributeRequirements"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 要求能力値","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
