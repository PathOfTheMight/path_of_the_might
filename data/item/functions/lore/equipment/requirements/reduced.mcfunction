execute store result score #AttributeRequirements Number run data get block -40691 2 -40700 RecordItem.tag.Suffix[{Name:"AttributeRequirements"}].AffixValue
scoreboard players add #AttributeRequirements Number 100

scoreboard players operation #Str Number *= #AttributeRequirements Number
scoreboard players operation #Dex Number *= #AttributeRequirements Number
scoreboard players operation #Int Number *= #AttributeRequirements Number

scoreboard players operation #Str Number /= #100 Number
scoreboard players operation #Dex Number /= #100 Number
scoreboard players operation #Int Number /= #100 Number
