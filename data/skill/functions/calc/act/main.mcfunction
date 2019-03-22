#triggerでEnderItem or SelectedItemのtagのSlotを#Slotに取得
#actメイン
#0:Mainhand 1:Offhand 2:Helmet 3:Chestplate 4:Gloves 5:Boots 6:Amulet 7:Ring1 8:Ring2 9:Belt


#装備ごとにitem
#トリガーはtag+トリガーリスト[]をitemに

###スキルアイコンから装備スロットとスキルタグ取得
execute store result score #Equipment Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Equipment 1
execute store result score #GemID Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.GemID 1
execute store result score #GemLevel Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Level 1
execute store result score #GemQuality Number run data get entity 00000000-0000-0000-0000-0000000000 ArmorItems[3].tag.Gem.Quality 1

###装備ステータスをロード
scoreboard players operation #ID Number = @s ID
execute as @e[tag=StatusAEC,x=-40896,y=1,z=-40960,distance=..1] if score @s Number = #Equipment Number if score @s ID = #ID Number run function skill:calc/act/load/base/main

###Buff:itemにて個別に適用済み


###Active Skill名から個別スキルに分岐
###itemから必要スコアを交えてステータス計算
#@s to # , add to # summon AEC as AEC # to @s

###Damage Roll
function skill:calc/act/damage_roll/main

###発動！

tag @s remove Drop
tag @s remove Swap