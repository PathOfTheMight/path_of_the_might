execute if score #AffixLevel Number matches 1..10 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 11..22 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 23..34 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 35..45 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 46..59 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 60..72 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 73..82 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 83.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 8
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:15,Max:19,Min2:3,Max2:7}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:24,Min2:8,Max2:30}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:25,Max:34,Min2:31,Max2:50}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:35,Max:44,Min2:51,Max2:64}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:45,Max:54,Min2:65,Max2:82}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:55,Max:64,Min2:83,Max2:99}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:65,Max:74,Min2:100,Max2:134}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:75,Max:79,Min2:135,Max2:169}

function item:enchant/calc/rand_affix_value
scoreboard players set #LoreCount Number 2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncLocalPhysicalDamage_Accuracy"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 物理ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
data modify block -40692 1 -40700 Text2 set value '[{"text":"   ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 命中","color":"white","bold":true,"italic":false}]'
