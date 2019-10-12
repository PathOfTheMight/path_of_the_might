execute if score #AffixLevel Number matches 83.. run scoreboard players set #CurrentTier Number 1

scoreboard players set #GlobalTier Number 1
function item:enchant/calc/tiers

data modify block -40691 1 -40700 RecordItem.tag.Affix set value {Min:47,Max:72,Min2:98,Max2:123}

function item:enchant/calc/rand_affix_value
function item:enchant/calc/rand_affix_value2

data modify block -40691 1 -40700 RecordItem.tag.AffixName set value "AddChaosLocalDamage"
data modify block -40692 1 -40700 Text1 set value '[{"text":"✦ ","color":"red","italic":false},{"score":{"name":"#AffixValue","objective":"Number"},"color":"light_purple","italic":false},{"text":"-","color":"light_purple","italic":false},{"score":{"name":"#AffixValue2","objective":"Number"},"color":"light_purple","italic":false},{"text":" カオスダメージ","color":"white","bold":true,"italic":false},{"nbt":"RecordItem.tag.TierStar","block":"-40691 1 -40700","color":"yellow","italic":false},{"nbt":"RecordItem.tag.TierBar","block":"-40691 1 -40700","color":"gray","italic":false}]'
