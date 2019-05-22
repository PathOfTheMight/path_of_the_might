execute if score #GlobalTier Number matches 2 run scoreboard players set #AffixValue Number 18
execute if score #GlobalTier Number matches 1 run scoreboard players set #AffixValue Number 32

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "attribute_requirements"
data modify block -40692 1 -40700 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"text":"-","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 要求能力値","color":"gray","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"dark_gray","italic":false}]'
