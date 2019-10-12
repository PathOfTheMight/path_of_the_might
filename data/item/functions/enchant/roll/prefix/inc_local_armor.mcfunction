execute if score #AffixLevel Number matches 3..16 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 17..28 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 29..41 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 42..59 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 60..71 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 72..83 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 84.. run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 86.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 8
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:15,Max:26}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:27,Max:42}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:43,Max:55}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:56,Max:67}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:68,Max:79}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:80,Max:91}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:92,Max:100}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:101,Max:110}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncLocalArmor"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" アーマー","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
