execute if score #AffixLevel Number matches 36..59 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 60.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/attribute_requirements/main
