execute if score #AffixLevel Number matches 2..16 run scoreboard players set #GlobalTier Number 6
execute if score #AffixLevel Number matches 17..28 run scoreboard players set #GlobalTier Number 5
execute if score #AffixLevel Number matches 29..41 run scoreboard players set #GlobalTier Number 4
execute if score #AffixLevel Number matches 42..59 run scoreboard players set #GlobalTier Number 3
execute if score #AffixLevel Number matches 60..77 run scoreboard players set #GlobalTier Number 2
execute if score #AffixLevel Number matches 78.. run scoreboard players set #GlobalTier Number 1

scoreboard players operation #LocalTier Number = #GlobalTier Number
function item:enchant/calc/tier_star

execute if score #GlobalTier Number matches 1.. run function item:enchant/roll/prefix/inc_armor_stun_recovery/main
