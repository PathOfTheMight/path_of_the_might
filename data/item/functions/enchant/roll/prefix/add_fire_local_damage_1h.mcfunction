execute if score #AffixLevel Number matches 1..11 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 12..17 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 18..25 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 26..32 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 33..41 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 42..50 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 51..61 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 62..73 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 74.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 9
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:2,Min2:3,Max2:4}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:8,Max:10,Min2:15,Max2:18}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:12,Max:16,Min2:24,Max2:28}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:17,Max:22,Min2:33,Max2:39}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:28,Min2:42,Max2:49}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:26,Max:35,Min2:53,Max2:61}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:32,Max:43,Min2:63,Max2:74}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:38,Max:51,Min2:77,Max2:89}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:45,Max:61,Min2:91,Max2:106}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddFireLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"red","italic":false},{"text":"-","color":"red","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"red","italic":false},{"text":" 火ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
