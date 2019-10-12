execute if score #AffixLevel Number matches 1..16 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 17..27 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 28..41 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 42..55 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 56..78 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 79.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 6
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:13}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:16}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:17,Max:19}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:22}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:23,Max:25}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:26,Max:28}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncStunRecovery"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" スタン回復速度","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
