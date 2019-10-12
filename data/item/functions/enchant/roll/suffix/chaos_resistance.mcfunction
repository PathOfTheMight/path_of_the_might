execute if score #AffixLevel Number matches 16..29 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 30..43 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 44..55 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 56..64 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 65..80 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 81.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 6
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:5,Max:10}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:15}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:16,Max:20}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:25}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:26,Max:30}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:31,Max:35}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "ChaosResistance"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":"%","color":"white","italic":false},{"text":" カオス耐性","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
