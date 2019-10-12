scoreboard players set #RandMod Number 8
function main:rand
scoreboard players operation #AffixType Number = #RandMod Number

execute if score #AffixType Number matches 0 if score #AffixLevel Number matches 2.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddPhysicalLocalDamage"}]}}} run function item:enchant/roll/prefix/add_physical_local_damage_1h

execute if score #AffixType Number matches 1 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddFireLocalDamage"}]}}} run function item:enchant/roll/prefix/add_fire_local_damage_1h

execute if score #AffixType Number matches 2 if score #AffixLevel Number matches 2.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddColdLocalDamage"}]}}} run function item:enchant/roll/prefix/add_cold_local_damage_1h

execute if score #AffixType Number matches 3 if score #AffixLevel Number matches 3.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddLightningLocalDamage"}]}}} run function item:enchant/roll/prefix/add_lightning_local_damage_1h

execute if score #AffixType Number matches 4 if score #AffixLevel Number matches 83.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddChaosLocalDamage"}]}}} run function item:enchant/roll/prefix/add_chaos_local_damage_1h

execute if score #AffixType Number matches 5 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncPhysicalLocalDamage"}]}}} run function item:enchant/roll/prefix/inc_physical_local_damage

execute if score #AffixType Number matches 6 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncPhysicalLocalDamage_Accuracy"}]}}} run function item:enchant/roll/prefix/inc_physical_local_damage_accuracy

execute if score #AffixType Number matches 7 if score #AffixLevel Number matches 4.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncElementalAttackDamage"}]}}} run function item:enchant/roll/prefix/inc_elemental_attack_damage
