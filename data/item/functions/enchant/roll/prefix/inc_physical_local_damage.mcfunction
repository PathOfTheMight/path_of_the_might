execute if score #AffixLevel Number matches 1..10 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 11..22 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 23..34 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 35..43 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 46..59 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 60..72 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 73..82 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 83.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 8
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:40,Max:49}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:50,Max:64}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:65,Max:84}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:85,Max:109}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:110,Max:134}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:135,Max:154}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:155,Max:169}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:170,Max:179}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncPhysicalLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 物理ダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
