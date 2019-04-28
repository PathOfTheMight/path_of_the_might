execute if score #AffixLevel Number matches 16..29 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 30..43 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 44..55 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 56..64 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 65..80 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 81.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/chaos_resistance/main
