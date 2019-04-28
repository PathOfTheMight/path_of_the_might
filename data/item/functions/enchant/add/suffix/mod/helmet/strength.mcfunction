execute if score #AffixLevel Number matches 1..10 run scoreboard players set #GlobalTier Number 9
execute if score #AffixLevel Number matches 11..21 run scoreboard players set #GlobalTier Number 8
execute if score #AffixLevel Number matches 22..32 run scoreboard players set #GlobalTier Number 7
execute if score #AffixLevel Number matches 33..43 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 44..54 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 55..65 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 66..73 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 74..81 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 82.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/strength/main
