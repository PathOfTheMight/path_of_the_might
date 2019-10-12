execute if score #AffixLevel Number matches 1..10 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 11..21 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 22..29 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 30..36 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 37..44 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 45..59 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 60..76 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 77.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 8
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 8 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:5,Max:7}
execute if score #CurrentTier Number matches 7 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:8,Max:10}
execute if score #CurrentTier Number matches 6 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:13}
execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:14,Max:16}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:17,Max:19}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:20,Max:22}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:23,Max:25}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:26,Max:27}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "IncAttackSpeed"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"blue","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":"%","color":"aqua","italic":false},{"text":" 攻撃速度","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
