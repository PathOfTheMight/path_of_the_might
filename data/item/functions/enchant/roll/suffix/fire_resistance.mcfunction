execute if score #AffixLevel Number matches 1..11 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 12..23 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 24..35 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 36..47 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 48..59 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 60..71 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 72..83 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 84.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 8
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:6,Max:11}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:12,Max:17}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:18,Max:23}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:24,Max:29}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:30,Max:35}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:36,Max:41}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:42,Max:45}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:46,Max:48}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "FireResistance"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"white","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"white","italic":false},{"text":"%","color":"white","italic":false},{"text":" 火耐性","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
