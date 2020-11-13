execute store result score #BaseArmor Number store result score #Armor Number run data get storage item: Item.tag.BaseStats.Armor.Base 1
execute store result score #BaseEvasion Number store result score #Evasion Number run data get storage item: Item.tag.BaseStats.Evasion.Base 1
execute store result score #BaseEnergyShield Number store result score #EnergyShield Number run data get storage item: Item.tag.BaseStats.EnergyShield.Base 1
execute store result score #BaseBlock Number store result score #Block Number run data get storage item: Item.tag.BaseStats.Block.Base 1

#Add
execute if score #Armor Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalArmor"}] run function item:lore/equipment/base_stats/armor/add_local_armor
execute if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalEvasion"}] run function item:lore/equipment/base_stats/armor/add_local_evasion
execute if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalEnergyShield"}] run function item:lore/equipment/base_stats/armor/add_local_evasion
execute if score #Armor Number matches 1.. if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEvasion"}] run function item:lore/equipment/base_stats/armor/add_local_armor_add_local_evasion
execute if score #Armor Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalArmor_AddLocalEnergyShield"}] run function item:lore/equipment/base_stats/armor/add_local_armor_add_local_energy_shield
execute if score #Evasion Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalEvasion_AddLocalEnergyShield"}] run function item:lore/equipment/base_stats/armor/add_local_evasion_add_local_energy_shield
execute if score #Armor Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalArmor_Life"}] run function item:lore/equipment/base_stats/armor/add_local_armor_life
execute if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalEvasion_Life"}] run function item:lore/equipment/base_stats/armor/add_local_evasion_life
execute if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"AddLocalEnergyShield_Life"}] run function item:lore/equipment/base_stats/armor/add_local_energy_shield_life
execute if score #Block Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmor_BlockAttack"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_block_attack
execute if score #Block Number matches 1.. if data storage item: Item.tag.Suffix[{ID:"BlockAttack"}] run function item:lore/equipment/base_stats/armor/block_attack

#Inc
scoreboard players set #IncArmor Number 100
scoreboard players set #IncEvasion Number 100
scoreboard players set #IncEnergyShield Number 100
execute if score #Armor Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmor"}] run function item:lore/equipment/base_stats/armor/inc_local_armor
execute if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEvasion"}] run function item:lore/equipment/base_stats/armor/inc_local_evasion
execute if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEnergyShield"}] run function item:lore/equipment/base_stats/armor/inc_local_energy_shield
execute if score #Armor Number matches 1.. if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmorAndEvasion"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_and_evasion
execute if score #Armor Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmorAndEnergyShield"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_and_energy_shield
execute if score #Evasion Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEvasionAndEnergyShield"}] run function item:lore/equipment/base_stats/armor/inc_local_evasion_and_energy_shield
execute if score #Armor Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmor_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_inc_stun_recovery
execute if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEvasion_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_evasion_inc_stun_recovery
execute if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEnergyShield_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_energy_shield_inc_stun_recovery
execute if score #Armor Number matches 1.. if score #Evasion Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmorAndEvasion_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_and_evasion_inc_stun_recovery
execute if score #Armor Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalArmorAndEnergyShield_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_armor_and_energy_shield_inc_stun_recovery
execute if score #Evasion Number matches 1.. if score #EnergyShield Number matches 1.. if data storage item: Item.tag.Prefix[{ID:"IncLocalEvasionAndEnergyShield_IncStunRecovery"}] run function item:lore/equipment/base_stats/armor/inc_local_evasion_and_energy_shield_inc_stun_recovery
scoreboard players operation #Armor Number *= #IncArmor Number
scoreboard players operation #Armor Number /= #100 Number
scoreboard players operation #Evasion Number *= #IncEvasion Number
scoreboard players operation #Evasion Number /= #100 Number
scoreboard players operation #EnergyShield Number *= #IncEnergyShield Number
scoreboard players operation #EnergyShield Number /= #100 Number

#save
execute store result storage item: Item.tag.BaseStats.Armor.Total int 1 run scoreboard players get #Armor Number
execute store result storage item: Item.tag.BaseStats.Evasion.Total int 1 run scoreboard players get #Evasion Number
execute store result storage item: Item.tag.BaseStats.EnergyShield.Total int 1 run scoreboard players get #EnergyShield Number
execute store result storage item: Item.tag.BaseStats.Block.Total int 1 run scoreboard players get #Block Number

data remove storage armor_lore: ArmorLore

execute if score #Armor Number matches 1.. if score #Armor Number = #BaseArmor Number run data modify storage armor_lore: ArmorLore.Armor set value '[{"translate":"防御力: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Armor","objective":"Number"},"color":"red","bold":false}]}]'
execute if score #Armor Number matches 1.. unless score #Armor Number = #BaseArmor Number run data modify storage armor_lore: ArmorLore.Armor set value '[{"translate":"防御力: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Armor","objective":"Number"},"color":"red","bold":false,"underlined":true}]}]'
execute if score #Evasion Number matches 1.. if score #Evasion Number = #BaseEvasion Number run data modify storage armor_lore: ArmorLore.Evasion set value '[{"translate":"敏捷性: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Evasion","objective":"Number"},"color":"green","bold":false}]}]'
execute if score #Evasion Number matches 1.. unless score #Evasion Number = #BaseEvasion Number run data modify storage armor_lore: ArmorLore.Evasion set value '[{"translate":"敏捷性: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Evasion","objective":"Number"},"color":"green","bold":false,"underlined":true}]}]'
execute if score #EnergyShield Number matches 1.. if score #EnergyShield Number = #BaseEnergyShield Number run data modify storage armor_lore: ArmorLore.EnergyShield set value '[{"translate":"魔力障壁: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#EnergyShield","objective":"Number"},"color":"aqua","bold":false}]}]'
execute if score #EnergyShield Number matches 1.. unless score #EnergyShield Number = #BaseEnergyShield Number run data modify storage armor_lore: ArmorLore.EnergyShield set value '[{"translate":"魔力障壁: %s","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#EnergyShield","objective":"Number"},"color":"aqua","bold":false,"underlined":true}]}]'
execute if score #Block Number matches 1.. if score #Block Number = #BaseBlock Number run data modify storage armor_lore: ArmorLore.Block set value '[{"translate":"ブロック率：技能: %s%%","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Block","objective":"Number"},"color":"aqua","bold":false}]}]'
execute if score #Block Number matches 1.. unless score #Block Number = #BaseBlock Number run data modify storage armor_lore: ArmorLore.Block set value '[{"translate":"ブロック率：技能: %s%%","color":"gray","bold":true,"italic":false,"with":[{"score":{"name":"#Block","objective":"Number"},"color":"aqua","bold":false,"underlined":true}]}]'

#Lore
execute if data storage armor_lore: ArmorLore run data modify block 2 4 2 Text1 set value '[{"nbt":"ArmorLore.Armor","storage":"armor_lore:","interpret":true},{"nbt":"ArmorLore.Evasion","storage":"armor_lore:","interpret":true},{"nbt":"ArmorLore.EnergyShield","storage":"armor_lore:","interpret":true}]'
execute if data storage armor_lore: ArmorLore run data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1

execute if score #Block Number matches 1.. run data modify block 2 4 2 Text1 set value '{"nbt":"ArmorLore.Block","storage":"armor_lore:","interpret":true}'
execute if score #Block Number matches 1.. run data modify storage item: Item.tag.display.Lore append from block 2 4 2 Text1
