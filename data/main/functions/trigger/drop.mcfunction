#Qキードロップ

#所持アイテムの場合即回収させる
execute store result score #SelectedItem Number run data get entity @s SelectedItem.Count 1
execute unless score #SelectedItem Number = @s SelectedItem anchored eyes run data merge entity @e[type=item,limit=1,sort=nearest,distance=..2,nbt={Age:0s}] {PickupDelay:0s}

#トリガー
#インスタントスキルは即発動
tag @s add Drop

scoreboard players reset @s Drop
