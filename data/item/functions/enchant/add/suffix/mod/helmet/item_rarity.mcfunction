execute if score #AffixLevel Number matches 3..29 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 30..52 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 53..74 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 75.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/item_rarity/main