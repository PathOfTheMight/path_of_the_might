data modify block -40896 1 -40960 Text1 set from entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Name
execute store result score #GemLevel Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Level
execute store result score #GemQuality Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Quality

execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Red run function skill:calc/act/gem/active/red
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Green run function skill:calc/act/gem/active/green
execute if data 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.ActiveGem.Tags.Blue run function skill:calc/act/gem/active/blue
