execute unless data storage item: Item.tag.Analyzed run data modify block 2 4 2 Text1 set value '[{"storage":"affix:","nbt":"Affix.MainLore1","interpret":true}]'
execute if data storage item: Item.tag.Analyzed run data modify block 2 4 2 Text1 set value '[{"storage":"affix:","nbt":"Affix.MainLore1","interpret":true},{"text":" "},{"storage":"affix:","nbt":"Affix.HiddenLore1","interpret":true}]'
data modify storage affix: Affix.Lore1 set from block 2 4 2 Text1
