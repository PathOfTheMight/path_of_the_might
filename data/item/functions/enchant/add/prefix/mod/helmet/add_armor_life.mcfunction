execute if score #AffixLevel Number matches 30..45 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 46..61 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 62.. run scoreboard players set #GlobalTier Number 2

scoreboard players operation #LocalTier Number = #GlobalTier Number
scoreboard players remove #LocalTier Number 1
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/prefix/add_armor_life/main
