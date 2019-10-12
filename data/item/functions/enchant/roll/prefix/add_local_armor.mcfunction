execute if score #AffixLevel Number matches 1..17 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 18..29 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 30..45 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 46..58 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 59..72 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 73.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 6
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:3,Max:10}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:35}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:36,Max:60}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:61,Max:138}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:139,Max:322}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:323,Max:400}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddLocalArmor"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" アーマー","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
