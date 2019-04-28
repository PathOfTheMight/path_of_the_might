execute if score #GlobalTier Number matches 2 run scoreboard players set #AffixValue Number 18
execute if score #GlobalTier Number matches 1 run scoreboard players set #AffixValue Number 32

data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.AffixName set value "attribute_requirements"
data modify block -40896 1 -40960 Text1 set value '[{"text":"⬤ ","color":"blue","italic":false},{"text":"-","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 要求能力値","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.TierStar","entity":"00000000-0000-0000-0000-000000000000","color":"dark_gray","italic":false}]'
