execute if score #AffixLevel Number matches 1..19 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 20..29 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 30..43 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 44..58 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 59..72 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 73.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 6
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:10,Max:14}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:15,Max:19}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:24}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:25,Max:29}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:30,Max:34}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:35,Max:38}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncCriticalStrikeChance"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" クリティカル発生率","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
