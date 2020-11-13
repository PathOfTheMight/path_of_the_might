#Gem
execute store result score #Temp Lvl run data get storage gem: Gem.tag.Requirements.Level
execute store result score #Temp Str run data get storage gem: Gem.tag.Requirements.Str
execute store result score #Temp Dex run data get storage gem: Gem.tag.Requirements.Dex
execute store result score #Temp Int run data get storage gem: Gem.tag.Requirements.Int

scoreboard players operation #Level Number > #Temp Lvl
scoreboard players operation #Str Number > #Temp Str
scoreboard players operation #Dex Number > #Temp Dex
scoreboard players operation #Int Number > #Temp Int
