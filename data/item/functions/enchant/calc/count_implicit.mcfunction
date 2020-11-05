#Implicit
execute unless data storage item: Item.tag.Implicit run data modify storage item: Item.tag.Implicit set value []
execute store result score #ICount Number run data get storage item: Item.tag.Implicit
