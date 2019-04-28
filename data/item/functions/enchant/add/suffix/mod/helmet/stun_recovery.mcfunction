execute if score #AffixLevel Number matches 1..16 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 17..27 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 28..41 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 42..55 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 56..78 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 79.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/stun_recovery/main
