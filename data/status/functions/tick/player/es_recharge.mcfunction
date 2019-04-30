#ESリチャージ
scoreboard players operation @s Es += @s EsRgn
scoreboard players operation @s Es < @s MaxEs

#ES割合の計算・表示
scoreboard players operation #Es Number = @p Es
scoreboard players operation #Es Number *= #20 Number
scoreboard players operation #Es Number /= @p MaxEs
execute unless score #Es Number = @p EsRatio store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.armor"}].Amount int 1 run scoreboard players get #Es Number
scoreboard players operation @s EsRatio = #Es Number
