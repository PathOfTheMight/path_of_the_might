scoreboard players set #RandMod Number 5
function main:rand
scoreboard players operation #AffixType Number = #RandMod Number

execute if score #AffixType Number matches 0 run scoreboard players set #LocalTier Number 10
execute if score #AffixType Number matches 0 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"Life"}]}}} run function item:enchant/roll/prefix/life

execute if score #AffixType Number matches 1 run scoreboard players set #LocalTier Number 4
execute if score #AffixType Number matches 1 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddLocalArmor"}]}}} run function item:enchant/roll/prefix/add_local_armor

execute if score #AffixType Number matches 2 run scoreboard players set #LocalTier Number 7
execute if score #AffixType Number matches 2 if score #AffixLevel Number matches 3.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncLocalArmor"}]}}} run function item:enchant/roll/prefix/inc_local_armor

execute if score #AffixType Number matches 3 if score #AffixLevel Number matches 2.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncLocalArmor_IncStunRecovery"}]}}} run function item:enchant/roll/prefix/inc_local_armor_inc_stun_recovery

execute if score #AffixType Number matches 4 run scoreboard players set #LocalTier Number 3
execute if score #AffixType Number matches 4 if score #AffixLevel Number matches 30.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddLocalArmor_Life"}]}}} run function item:enchant/roll/prefix/add_local_armor_life

#execute if score #AffixType Number matches 5 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"MinionGem"}]}}} run function item:enchant/roll/prefix/minion_gem
#execute if score #AffixType Number matches 6 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"ItemRarity"}]}}} run function item:enchant/roll/prefix/item_rarity
#execute if score #AffixType Number matches 7 if score #AffixLevel Number matches 1.. unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"ReflectDamage"}]}}} run function item:enchant/roll/prefix/reflect_damage
