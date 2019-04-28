execute store result score #Armor Number run data get block ~ ~ ~ Items[0].tag.Armor 1
#AddArmor
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"AddArmor"}] run function item:lore/base_stats/armor/armor/add_armor
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"AddArmor/Life"}] run function item:lore/base_stats/armor/armor/add_armor_life
#IncArmor
scoreboard players set #IncArmor Number 100
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor"}] run function item:lore/base_stats/armor/armor/inc_armor
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor/Evasion"}] run function item:lore/base_stats/armor/armor/inc_armor_evasion
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor/EnergyShield"}] run function item:lore/base_stats/armor/armor/inc_armor_energy_shield
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor/StunRecovery"}] run function item:lore/base_stats/armor/armor/inc_armor_stun_recovery
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor/Evasion/StunRecovery"}] run function item:lore/base_stats/armor/armor/inc_armor_evasion_stun_recovery
execute if data block ~ ~ ~ Items[0].tag.Prefix[{Name:"IncArmor/EnergyShield/StunRecovery"}] run function item:lore/base_stats/armor/armor/inc_armor_energy_shield_stun_recovery
scoreboard players operation #Armor Number *= #IncArmor Number
scoreboard players operation #Armor Number /= #100 Number

data modify block -40896 1 -40960 Text1 set value '[{"text":"アーマー: ","color":"gray","italic":false},{"score":{"name":"#Armor","objective":"Number"},"color":"red","italic":false}]'
data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40896 1 -40960 Text1
