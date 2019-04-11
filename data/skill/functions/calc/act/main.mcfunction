#triggerでEnderItem or SelectedItemのtagのSlotを#Slotに取得
#0:Mainhand 1:Offhand 2:Helmet 3:Chestplate 4:Gloves 5:Boots 6:Amulet 7:Ring1 8:Ring2 9:Belt

###スキルアイコンから装備スロットとスキルタグ取得
execute store result score #Equipment Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Equipment 1
execute store result score #GemID Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.SkillID 1
execute store result score #GemLevel Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Level 1
execute store result score #GemQuality Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Quality 1
execute store result score #Cost Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Cost 1

###スコアリセット
scoreboard players reset #Temp
###ActiveGemをロード
scoreboard players operation #ID Number = @s ID
execute as @e[tag=StatusAEC,x=-40896,y=1,z=-40960,distance=..1] if score @s Number = #Equipment Number if score @s ID = #ID Number run function skill:calc/act/gem/main

tag @s remove Drop
tag @s remove Swap
