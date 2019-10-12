execute if score #AffixLevel Number matches 1..10 run scoreboard players set #CurrentTier Number 10
execute if score #AffixLevel Number matches 11..21 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 22..32 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 33..43 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 44..54 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 55..65 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 66..73 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 74..81 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 82..84 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 85.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 10
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 10 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:8,Max:12}
execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:13,Max:17}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:18,Max:22}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:23,Max:27}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:28,Max:32}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:33,Max:37}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:38,Max:42}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:43,Max:50}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:51,Max:55}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:56,Max:60}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "Intelligence"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" INT","color":"white","bold":false,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
