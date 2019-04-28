execute if score #AffixLevel Number matches 3..16 run scoreboard players set #GlobalTier Number 8
execute if score #AffixLevel Number matches 17..28 run scoreboard players set #GlobalTier Number 7
execute if score #AffixLevel Number matches 29..41 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 42..59 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 60..71 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 72..83 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 84.. run scoreboard players set #GlobalTier Number 2

scoreboard players operation #LocalTier Number = #GlobalTier Number
scoreboard players remove #LocalTier Number 1
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/prefix/inc_armor/main
