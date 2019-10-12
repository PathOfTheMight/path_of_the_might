execute if score #AffixLevel Number matches 2..16 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 17..28 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 29..41 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 42..59 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 60..77 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 78.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 6
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:6,Max:13,Min2:6,Max2:7}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:20,Min2:8,Max2:9}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:26,Min2:10,Max2:11}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:27,Max:32,Min2:12,Max2:13}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:33,Max:38,Min2:14,Max2:15}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:39,Max:42,Min2:16,Max2:17}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2
scoreboard players set #LoreCount Number 2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncLocalArmor_IncStunRecovery"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" アーマー","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
data modify block -40692 1 -40700 Text2 set value '[{"text":"   ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" スタン回復速度","color":"white","bold":true,"italic":false}]'
