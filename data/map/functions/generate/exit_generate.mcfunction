#復帰座標にtp
scoreboard players operation #GatewayX Number = #GenerateX Number
scoreboard players operation #GatewayY Number = #GenerateY Number
scoreboard players operation #GatewayZ Number = #GenerateZ Number
function map:across/transfer/end_gateway
effect clear @s minecraft:levitation
tag @s remove GenerateMap
kill 0-0-1-0-1
#function map:load/tp_init
function map:load/tellraw/allocate/main

#マップなら初期位置にポータル設置
