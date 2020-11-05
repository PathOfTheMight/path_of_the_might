#Suffix
execute unless data storage item: Item.tag.Suffix run data modify storage item: Item.tag.Suffix set value []
execute store result score #SCount Number run data get storage item: Item.tag.Suffix
