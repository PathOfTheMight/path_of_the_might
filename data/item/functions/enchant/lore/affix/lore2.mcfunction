execute if data storage affix: Affix.MainLore2 unless data storage item: Item.tag.Analyzed run data modify block 2 4 2 Text1 set value '[{"storage":"affix:","nbt":"Affix.MainLore2","interpret":true}]'
execute if data storage affix: Affix.MainLore2 if data storage item: Item.tag.Analyzed run data modify block 2 4 2 Text1 set value '[{"storage":"affix:","nbt":"Affix.MainLore2","interpret":true},{"text":" "},{"storage":"affix:","nbt":"Affix.HiddenLore2","interpret":true}]'
execute if data storage affix: Affix.MainLore2 run data modify storage affix: Affix.Lore2 set from block 2 4 2 Text1
