#base critical chance、inc critical chance(パッシブ、装備)、crit_multi_incはスキルアイコンに保存
#inc critical chance(バフ)を足す
#乱数生成・クリティカル判定
#

#player
#execute store result score #base_crit_cha Number run data get entity @s SelectedItem.tag.Attributes[X].Amount
#execute store result score #inc_crit_cha Number run data get entity @s SelectedItem.tag.Attributes[X].Amount
scoreboard players operation #inc_crit_cha Number += @s inc_crit_cha

function main:rand
scoreboard players operation #Rand Number %= #10000 Number

#execute store result score #inc_crit_multi Number run data get entity @s SelectedItem.tag.Attributes[X].Amount

execute if score #crit_cha Number >= #Rand Number run scoreboard players operation @s damage *= @s crit_multi
execute if score #crit_cha Number >= #Rand Number run scoreboard players operation @s damage /= #100 Number
execute if score #crit_cha Number >= #Rand Number run tag @s add crit
