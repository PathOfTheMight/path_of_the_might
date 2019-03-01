#BaseName
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Rarity:"Normal"}}]} run data modify block -40896 1 -40960 Text1 set value "[{\"nbt\":\"ArmorItems[3].tag.BaseName\",\"entity\":\"00000000-0000-0000-0000-000000000000\",\"color\":\"white\"}]"
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Rarity:"Magic"}}]} run data modify block -40896 1 -40960 Text1 set value "[{\"nbt\":\"ArmorItems[3].tag.BaseName\",\"entity\":\"00000000-0000-0000-0000-000000000000\",\"color\":\"aqua\"}]"
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Rarity:"Rare"}}]} run data modify block -40896 1 -40960 Text1 set value "[{\"nbt\":\"ArmorItems[3].tag.BaseName\",\"entity\":\"00000000-0000-0000-0000-000000000000\",\"color\":\"gold\"}]"
execute if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Rarity:"Base"}}]} run data modify block -40896 1 -40960 Text1 set value "[{\"nbt\":\"ArmorItems[3].tag.BaseName\",\"entity\":\"00000000-0000-0000-0000-000000000000\",\"color\":\"light_purple\"}]"
data modify block ~ ~ ~ Items[0].tag.display.Name set from block -40896 1 -40960 Text1
