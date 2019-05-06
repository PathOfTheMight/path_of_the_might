#ターゲットをGatewayXYZの座標にTP
execute store result block -40889 1 -40953 ExitPortal.X int 1 run scoreboard players get #GatewayX Number
execute store result block -40889 1 -40953 ExitPortal.Y int 1 run scoreboard players get #GatewayY Number
execute store result block -40889 1 -40953 ExitPortal.Z int 1 run scoreboard players get #GatewayZ Number

tp @s -40889 1 -40953
