data remove storage item: Item.tag.Gems[-1]
#再帰処理
scoreboard players add #NewSocket Number 1
execute if score #NewSocket Number matches ..-1 run function item:enchant/remove/socket/main
