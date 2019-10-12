execute if score #AffixLevel Number matches 3..29 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 30..52 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 53..74 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 75.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 4
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:6,Max:10}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:14}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:15,Max:20}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:26}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "ItemRarity"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" アイテムレアリティ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
