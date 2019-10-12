execute if score #AffixLevel Number matches 1..17 run scoreboard players set #CurrentTier Number 8
execute if score #AffixLevel Number matches 18..29 run scoreboard players set #CurrentTier Number 7
execute if score #AffixLevel Number matches 30..43 run scoreboard players set #CurrentTier Number 6
execute if score #AffixLevel Number matches 44..58 run scoreboard players set #CurrentTier Number 5
execute if score #AffixLevel Number matches 59..77 run scoreboard players set #CurrentTier Number 4
execute if score #AffixLevel Number matches 78..82 run scoreboard players set #CurrentTier Number 3
execute if score #AffixLevel Number matches 83.. run scoreboard players set #CurrentTier Number 2

scoreboard players operation #LocalTier Number = #CurrentTier Number
scoreboard players remove #LocalTier Number 1
function item:enchant/calc/tier_star

execute if score #CurrentTier Number matches 1.. run function item:enchant/roll/suffix/life_regeneration
