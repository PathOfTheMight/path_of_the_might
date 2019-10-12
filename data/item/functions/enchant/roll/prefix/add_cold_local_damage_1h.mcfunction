execute if score #AffixLevel Number matches 2..11 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 12..18 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 19..26 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 27..33 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 34..42 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 43..51 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 52..62 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 63..74 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 75.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 9
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:1,Max:2,Min2:3,Max2:3}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:6,Max:8,Min2:13,Max2:15}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:10,Max:13,Min2:19,Max2:23}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:18,Min2:27,Max2:32}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:17,Max:23,Min2:34,Max2:40}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:22,Max:29,Min2:43,Max2:50}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:26,Max:35,Min2:52,Max2:60}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:31,Max:42,Min2:63,Max2:73}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:37,Max:50,Min2:74,Max2:87}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddColdLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"blue","italic":false},{"text":"-","color":"blue","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"blue","italic":false},{"text":" 氷ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
