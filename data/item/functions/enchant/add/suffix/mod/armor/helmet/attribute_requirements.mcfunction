execute if score #AffixLevel Number matches 36..59 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 60.. run scoreboard players set #CurrentTier Number 1

scoreboard players operation #LocalTier Number = #CurrentTier Number
function item:enchant/calc/tier_star

execute if score #CurrentTier Number matches 1.. run function item:enchant/roll/suffix/attribute_requirements
