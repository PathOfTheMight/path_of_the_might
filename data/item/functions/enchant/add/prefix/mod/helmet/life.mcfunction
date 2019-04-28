execute if score #AffixLevel Number matches 1..4 run scoreboard players set #GlobalTier Number 13
execute if score #AffixLevel Number matches 5..10 run scoreboard players set #GlobalTier Number 12
execute if score #AffixLevel Number matches 11..17 run scoreboard players set #GlobalTier Number 11
execute if score #AffixLevel Number matches 18..23 run scoreboard players set #GlobalTier Number 10
execute if score #AffixLevel Number matches 24..29 run scoreboard players set #GlobalTier Number 9
execute if score #AffixLevel Number matches 30..35 run scoreboard players set #GlobalTier Number 8
execute if score #AffixLevel Number matches 36..43 run scoreboard players set #GlobalTier Number 7
execute if score #AffixLevel Number matches 44..53 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 54..63 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 64.. run scoreboard players set #GlobalTier Number 4

scoreboard players operation #LocalTier Number = #GlobalTier Number
scoreboard players remove #LocalTier Number 3
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/prefix/life/main
