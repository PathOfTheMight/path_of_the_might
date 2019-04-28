scoreboard players set #RandMod Number 11
function main:rand
scoreboard players operation #AffixType Number = #RandMod Number

execute if score #AffixType Number matches 0 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"Accuracy"}]}}]} run function item:enchant/add/suffix/mod/helmet/accuracy
execute if score #AffixType Number matches 1 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"Strength"}]}}]} run function item:enchant/add/suffix/mod/helmet/strength
execute if score #AffixType Number matches 2 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"Intelligence"}]}}]} run function item:enchant/add/suffix/mod/helmet/intelligence
execute if score #AffixType Number matches 3 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"LifeRegeneration"}]}}]} run function item:enchant/add/suffix/mod/helmet/life_regeneration
execute if score #AffixType Number matches 4 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"FireResistance"}]}}]} run function item:enchant/add/suffix/mod/helmet/fire_resistance
execute if score #AffixType Number matches 5 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"ColdResistance"}]}}]} run function item:enchant/add/suffix/mod/helmet/cold_resistance
execute if score #AffixType Number matches 6 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"LightningResistance"}]}}]} run function item:enchant/add/suffix/mod/helmet/lightning_resistance
execute if score #AffixType Number matches 7 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"ChaosResistance"}]}}]} run function item:enchant/add/suffix/mod/helmet/chaos_resistance
execute if score #AffixType Number matches 8 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"AttributeRequirements"}]}}]} run function item:enchant/add/suffix/mod/helmet/attribute_requirements
execute if score #AffixType Number matches 9 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"ItemRarity"}]}}]} run function item:enchant/add/suffix/mod/helmet/item_rarity
execute if score #AffixType Number matches 10 unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{Suffix:[{Name:"StunRecovery"}]}}]} run function item:enchant/add/suffix/mod/helmet/stun_recovery
