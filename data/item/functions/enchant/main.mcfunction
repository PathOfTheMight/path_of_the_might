function item:enchant/calc/count_prefix
function item:enchant/calc/count_suffix
execute store result score #ItemLevel Number run data get block ~ ~ ~ Items[0].tag.ItemLevel 1

execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Normal"}},{Slot:1b,tag:{SubType:"Trans"}}]} run function item:enchant/craft/trans
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Magic"}},{Slot:1b,tag:{SubType:"Alt"}}]} run function item:enchant/craft/alt
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Magic"}},{Slot:1b,tag:{SubType:"Aug"}}]} run function item:enchant/craft/aug
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Magic"}},{Slot:1b,tag:{SubType:"Regal"}}]} run function item:enchant/craft/regal
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Normal"}},{Slot:1b,tag:{SubType:"Alc"}}]} run function item:enchant/craft/alc
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Rare"}},{Slot:1b,tag:{SubType:"Chaos"}}]} run function item:enchant/craft/chaos
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Rare"}},{Slot:1b,tag:{SubType:"Exa"}}]} run function item:enchant/craft/exa
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Magic"}},{Slot:1b,tag:{SubType:"Annul"}}]} run function item:enchant/craft/annul
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Rare"}},{Slot:1b,tag:{SubType:"Annul"}}]} run function item:enchant/craft/annul
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Magic"}},{Slot:1b,tag:{SubType:"Sco"}}]} run function item:enchant/craft/sco
execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:"Rare"}},{Slot:1b,tag:{SubType:"Sco"}}]} run function item:enchant/craft/sco
execute if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:1b,tag:{SubType:"Rename"}}]} run function item:enchant/calc/random_name/main

execute if score #PRemove Number matches 1.. run function item:enchant/remove/prefix/main
execute if score #SRemove Number matches 1.. run function item:enchant/remove/suffix/main

execute if score #PAdd Number matches 1.. run function item:enchant/add/prefix/main
execute if score #SAdd Number matches 1.. run function item:enchant/add/suffix/main

execute if score #Success Number matches 1 run function item:enchant/success
