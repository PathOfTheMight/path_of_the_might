scoreboard players set #RandMod Number 5
function main:rand
scoreboard players operation #AffixType Number = #RandMod Number

execute if score #AffixType Number matches 0 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"Life"}]}}} run function item:enchant/add/prefix/mod/helmet/life
execute if score #AffixType Number matches 1 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddArmor"}]}}} run function item:enchant/add/prefix/mod/helmet/add_armor
execute if score #AffixType Number matches 2 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncArmor"}]}}} run function item:enchant/add/prefix/mod/helmet/inc_armor
execute if score #AffixType Number matches 3 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"IncArmor/StunRecovery"}]}}} run function item:enchant/add/prefix/mod/helmet/inc_armor_stun_recovery
execute if score #AffixType Number matches 4 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"AddArmor/Life"}]}}} run function item:enchant/add/prefix/mod/helmet/add_armor_life
#execute if score #AffixType Number matches 5 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"MinionGem"}]}}} run function item:enchant/add/prefix/mod/helmet/minion_gem
#execute if score #AffixType Number matches 6 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"ItemRarity"}]}}} run function item:enchant/add/prefix/mod/helmet/item_rarity
#execute if score #AffixType Number matches 7 unless data block -40691 2 -40700 {RecordItem:{tag:{Prefix:[{Name:"ReflectDamage"}]}}} run function item:enchant/add/prefix/mod/helmet/reflect_damage
