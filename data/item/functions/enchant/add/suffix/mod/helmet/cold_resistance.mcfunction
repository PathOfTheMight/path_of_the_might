execute if score #AffixLevel Number matches 1..11 run scoreboard players set #GlobalTier Number 8
execute if score #AffixLevel Number matches 12..23 run scoreboard players set #GlobalTier Number 7
execute if score #AffixLevel Number matches 24..35 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 36..47 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 48..59 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 60..71 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 72..83 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 84.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/cold_resistance/main
