execute if score #AffixLevel Number matches 2..12 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 13..20 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 21..28 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 29..35 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 36..45 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 46..53 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 54..64 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 65..76 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 77.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 9
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:1,Min2:2,Max2:3}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:4,Max:5,Min2:8,Max2:9}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:6,Max:8,Min2:13,Max2:15}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:7,Max:11,Min2:16,Max2:19}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:9,Max:13,Min2:20,Max2:24}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:13,Max:17,Min2:26,Max2:30}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:19,Min2:29,Max2:35}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:17,Max:24,Min2:36,Max2:41}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:27,Min2:41,Max2:49}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddPhysicalLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":"-","color":"white","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"white","italic":false},{"text":" 物理ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
