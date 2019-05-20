###スコアリセット
scoreboard players reset #Temp
###スキルアイコンから装備スロットとスキルタグ取得
execute store result score #Equipment Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Equipment 1
execute store result score #GemID Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.SkillID 1
execute store result score #GemLevel Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Level 1
execute store result score #GemQuality Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Quality 1
execute store result score #Cost Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Cost 1
execute store result score #Temp WaitTimeH run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.WaitTimeH 1
#ID
scoreboard players operation #ID Number = @s ID
#Costチェック
execute if score #Cost Number <= @s Mp store success score #Temp Mp run scoreboard players operation @s Mp -= #Cost Number
###ActiveGemをロード
execute if score #Temp Mp matches 1 run function skill:calc/act/success

tag @s remove Drop
tag @s remove Swap
