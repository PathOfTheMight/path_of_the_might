execute store result score #Armor Number run data get block -40691 2 -40700 RecordItem.tag.BaseStats.Armor 1
#AddArmor
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"AddLocalArmor"}] run function item:lore/equipment/base_stats/armor/armor/add_local_armor
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"AddLocalArmor_Life"}] run function item:lore/equipment/base_stats/armor/armor/add_local_armor_life
#IncArmor
scoreboard players set #IncArmor Number 100
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor_Evasion"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor_evasion
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor_EnergyShield"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor_energy_shield
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor_StunRecovery"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor_inc_stun_recovery
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor_Evasion_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor_evasion_inc_stun_recovery
execute if data block -40691 2 -40700 RecordItem.tag.Prefix[{Name:"IncLocalArmor_EnergyShield_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/armor/inc_local_armor_energy_shield_inc_stun_recovery
scoreboard players operation #Armor Number *= #IncArmor Number
scoreboard players operation #Armor Number /= #100 Number
