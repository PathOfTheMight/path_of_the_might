#Prefix
execute unless data storage item: Item.tag.Prefix run data modify storage item: Item.tag.Prefix set value []
execute store result score #PCount Number run data get storage item: Item.tag.Prefix
