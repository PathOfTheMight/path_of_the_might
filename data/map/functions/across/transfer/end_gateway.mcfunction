#ターゲットをGatewayXYZの座標にTP
execute store result block -40693 1 -40700 ExitPortal.X int 1 run scoreboard players get #GatewayX Number
execute store result block -40693 1 -40700 ExitPortal.Y int 1 run scoreboard players get #GatewayY Number
execute store result block -40693 1 -40700 ExitPortal.Z int 1 run scoreboard players get #GatewayZ Number

tp @s -40693 1 -40700
