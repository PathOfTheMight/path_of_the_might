execute if score #AffixLevel Number matches 4..14 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 15..29 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 30..59 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 60..80 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 81.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 5
function item:enchant/calc/tiers

execute if score #CurrentTier Number matches 5 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:5,Max:10}
execute if score #CurrentTier Number matches 4 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:11,Max:20}
execute if score #CurrentTier Number matches 3 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:21,Max:30}
execute if score #CurrentTier Number matches 2 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:31,Max:37}
execute if score #CurrentTier Number matches 1 run data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:38,Max:42}

function item:enchant/calc/rand_affix_value

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddLocalArmor"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"text":"+","color":"aqua","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"aqua","italic":false},{"text":" 技能エレメンタルダメージ","color":"white","bold":true,"italic":false},{"text":"%","color":"aqua","italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
