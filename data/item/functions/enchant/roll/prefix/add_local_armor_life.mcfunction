execute if score #AffixLevel Number matches 30..45 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 46..61 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 62..77 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 78.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 4
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:20,Min2:18,Max2:23}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:42,Min2:24,Max2:28}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:43,Max:95,Min2:29,Max2:33}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:96,Max:120,Min2:34,Max2:38}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2
scoreboard players set #LoreCount Number 2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddLocalArmor_Life"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" アーマー","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
data modify block -40692 1 -40700 Text2 set value '[{"text":"   ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"white","italic":false},{"text":" 最大ライフ","color":"white","bold":true,"italic":false}]'
