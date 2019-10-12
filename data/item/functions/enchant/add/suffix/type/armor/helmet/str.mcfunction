scoreboard players set #RandMod Number 11
function main:rand
scoreboard players operation #AffixType Number = #RandMod Number

execute if score #AffixType Number matches 0 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"Accuracy"}]}}} run function item:enchant/roll/suffix/accuracy

execute if score #AffixType Number matches 1 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"Strength"}]}}} run function item:enchant/roll/suffix/strength

execute if score #AffixType Number matches 2 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"Intelligence"}]}}} run function item:enchant/roll/suffix/intelligence

execute if score #AffixType Number matches 3 run scoreboard players set #LocalTier Number 7
execute if score #AffixType Number matches 3 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"LifeRegeneration"}]}}} run function item:enchant/roll/suffix/life_regeneration

execute if score #AffixType Number matches 4 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"FireResistance"}]}}} run function item:enchant/roll/suffix/fire_resistance

execute if score #AffixType Number matches 5 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"ColdResistance"}]}}} run function item:enchant/roll/suffix/cold_resistance

execute if score #AffixType Number matches 6 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"LightningResistance"}]}}} run function item:enchant/roll/suffix/lightning_resistance

execute if score #AffixType Number matches 7 if score #AffixLevel Number matches 16.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"ChaosResistance"}]}}} run function item:enchant/roll/suffix/chaos_resistance

execute if score #AffixType Number matches 8 if score #AffixLevel Number matches 36.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"AttributeRequirements"}]}}} run function item:enchant/roll/suffix/attribute_requirements

execute if score #AffixType Number matches 9 if score #AffixLevel Number matches 3.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"ItemRarity"}]}}} run function item:enchant/roll/suffix/item_rarity

execute if score #AffixType Number matches 10 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Suffix:[{Name:"IncStunRecovery"}]}}} run function item:enchant/roll/suffix/inc_stun_recovery
