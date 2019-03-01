scoreboard players operation @s map = #Map Number

#Pos書き換え
execute store result entity @s Pos[0] double 1 run scoreboard players get @s X0
execute store result entity @s Pos[1] double 1 run scoreboard players get @s Y0
execute store result entity @s Pos[2] double 1 run scoreboard players get @s Z0
#fieldの設定
scoreboard players operation @s X0 = #X1 Number
scoreboard players operation @s Y0 = #Y1 Number
scoreboard players operation @s Z0 = #Z1 Number

function map:portal/set_name/main
