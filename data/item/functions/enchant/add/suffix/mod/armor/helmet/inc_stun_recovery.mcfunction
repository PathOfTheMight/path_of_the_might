execute if score #AffixLevel Number matches 1..16 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 17..27 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 28..41 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 42..55 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 56..78 run scoreboard players set #CurrentTier Number 2
execute if score #AffixLevel Number matches 79.. run scoreboard players set #CurrentTier Number 1

scoreboard players operation #LocalTier Number = #CurrentTier Number
function item:enchant/calc/tier_star

execute if score #CurrentTier Number matches 1.. run function item:enchant/roll/suffix/inc_stun_recovery
