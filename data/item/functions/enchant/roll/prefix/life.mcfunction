execute if score #AffixLevel Number matches 1..4 run scoreboard players set #CurrentTier Number 13
execute if score #AffixLevel Number matches 5..10 run scoreboard players set #CurrentTier Number 12
execute if score #AffixLevel Number matches 11..17 run scoreboard players set #CurrentTier Number 11
execute if score #AffixLevel Number matches 18..23 run scoreboard players set #CurrentTier Number 10
execute if score #AffixLevel Number matches 24..29 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 30..35 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 36..43 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 44..53 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 54..63 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 64..72 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 73..80 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 81..85 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 86.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 13
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 13 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:3,Max:9}
execute if score #CurrentTier Number matches 12 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:10,Max:19}
execute if score #CurrentTier Number matches 11 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:29}
execute if score #CurrentTier Number matches 10 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:30,Max:39}
execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:40,Max:49}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:50,Max:59}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:60,Max:69}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:70,Max:79}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:80,Max:89}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:90,Max:99}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:100,Max:109}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:110,Max:119}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:120,Max:129}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "Life"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" 最大ライフ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
