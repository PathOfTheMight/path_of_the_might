execute if score #AffixLevel Number matches 1..17 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 18..29 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 30..45 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 46.. run scoreboard players set #GlobalTier Number 3

scoreboard players operation #LocalTier Number = #GlobalTier Number
scoreboard players remove #LocalTier Number 2
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/prefix/add_armor/main
