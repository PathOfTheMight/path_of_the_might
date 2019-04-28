#オフハンド書き換え
#attribute list
#0 es
#1 es(armor)
#2
execute if score #es Number > @p es_ratio run scoreboard players add @p es_ratio 1
execute if score #es Number < @p es_ratio run scoreboard players remove @p es_ratio 1
function status:glass_pane

execute if score @p es_ratio matches 0 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #0 Number
execute if score @p es_ratio matches 1 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #1 Number
execute if score @p es_ratio matches 2 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #2 Number
execute if score @p es_ratio matches 3 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #3 Number
execute if score @p es_ratio matches 4 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #4 Number
execute if score @p es_ratio matches 5 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #5 Number
execute if score @p es_ratio matches 6 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #6 Number
execute if score @p es_ratio matches 7 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #7 Number
execute if score @p es_ratio matches 8 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #8 Number
execute if score @p es_ratio matches 9 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #9 Number
execute if score @p es_ratio matches 10 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #10 Number
execute if score @p es_ratio matches 11 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #11 Number
execute if score @p es_ratio matches 12 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #12 Number
execute if score @p es_ratio matches 13 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #13 Number
execute if score @p es_ratio matches 14 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #14 Number
execute if score @p es_ratio matches 15 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #15 Number
execute if score @p es_ratio matches 16 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #16 Number
execute if score @p es_ratio matches 17 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #17 Number
execute if score @p es_ratio matches 18 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #18 Number
execute if score @p es_ratio matches 19 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #19 Number
execute if score @p es_ratio matches 20 store result entity @p Inventory[40].tag.AttributeModifiers[1].Amount double 1 run scoreboard players get #20 Number

clear @p minecraft:light_gray_stained_glass_pane 64
#clear @p minecraft:leather_boots
#clear @p minecraft:leather_leggings
#clear @p minecraft:leather_chestplate
#clear @p minecraft:leather_helmet
