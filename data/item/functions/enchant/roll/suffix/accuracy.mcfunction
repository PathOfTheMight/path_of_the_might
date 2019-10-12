execute if score #AffixLevel Number matches 1..11 run scoreboard players set #CurrentTier Number 10
execute if score #AffixLevel Number matches 12..19 run scoreboard players set #CurrentTier Number 9
execute if score #AffixLevel Number matches 20..25 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 26..32 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 33..40 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 41..49 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 50..62 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 63..75 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 76..84 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 85.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 10
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 10 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:5,Max:15}
execute if score #CurrentTier Number matches 9 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:16,Max:60}
execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:61,Max:100}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:101,Max:130}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:131,Max:165}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:166,Max:200}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:201,Max:250}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:251,Max:320}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:321,Max:400}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:401,Max:501}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "Accuracy"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":" 命中","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
