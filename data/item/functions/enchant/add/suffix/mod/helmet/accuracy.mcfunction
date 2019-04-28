execute if score #AffixLevel Number matches 1..11 run scoreboard players set #GlobalTier Number 10
execute if score #AffixLevel Number matches 12..19 run scoreboard players set #GlobalTier Number 9
execute if score #AffixLevel Number matches 20..25 run scoreboard players set #GlobalTier Number 8
execute if score #AffixLevel Number matches 26..32 run scoreboard players set #GlobalTier Number 7
execute if score #AffixLevel Number matches 33..40 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 41..49 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 50..62 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 63..75 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 76..84 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 85.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/suffix/accuracy/main
