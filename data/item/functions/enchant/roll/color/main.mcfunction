#0 - Thold1 : Red  Thold1 - Thold2 : Green  Thold2 - 1000000 : Blue
execute store result score #Str Number run data get storage item: Item.tag.Requirements.Str.Base
execute store result score #Dex Number run data get storage item: Item.tag.Requirements.Dex.Base
execute store result score #Int Number run data get storage item: Item.tag.Requirements.Int.Base
#Type指定なし
scoreboard players set #Thold1 Number 333333
scoreboard players set #Thold2 Number 666667
#Type指定あり
execute if data storage item: {Item:{tag:{Requirements:{Type:"Str"}}}} run function item:enchant/roll/color/str
execute if data storage item: {Item:{tag:{Requirements:{Type:"Dex"}}}} run function item:enchant/roll/color/dex
execute if data storage item: {Item:{tag:{Requirements:{Type:"Int"}}}} run function item:enchant/roll/color/int
execute if data storage item: {Item:{tag:{Requirements:{Type:"Str_Dex"}}}} run function item:enchant/roll/color/str_dex
execute if data storage item: {Item:{tag:{Requirements:{Type:"Str_Int"}}}} run function item:enchant/roll/color/str_int
execute if data storage item: {Item:{tag:{Requirements:{Type:"Dex_Int"}}}} run function item:enchant/roll/color/dex_int

function main:rand
execute if score #Rand Number <= #Thold1 Number run data modify storage gem: Gem.Socket set value "Red"
execute if score #Thold1 Number < #Rand Number if score #Rand Number < #Thold2 Number run data modify storage gem: Gem.Socket set value "Green"
execute if score #Thold2 Number <= #Rand Number run data modify storage gem: Gem.Socket set value "Blue"
