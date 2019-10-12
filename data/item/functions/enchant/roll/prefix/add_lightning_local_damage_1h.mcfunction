execute if score #AffixLevel Number matches 3..12 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 13..18 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 19..26 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 27..33 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 34..41 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 42..50 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 51..62 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 63..73 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 74.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 9
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:1,Min2:6,Max2:6}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:2,Min2:27,Max2:28}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:3,Min2:41,Max2:43}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:2,Max:5,Min2:58,Max2:61}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:2,Max:6,Min2:72,Max2:76}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:2,Max:7,Min2:91,Max2:96}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:3,Max:9,Min2:110,Max2:116}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:4,Max:11,Min2:133,Max2:140}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:4,Max:13,Min2:158,Max2:166}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddLightningLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"yellow","italic":false},{"text":"-","color":"yellow","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"yellow","italic":false},{"text":" 雷ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
