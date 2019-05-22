#座標取得
execute store result score @s X0 run data get entity @s Pos[0] 100
execute store result score @s Y0 run data get entity @s Pos[1] 100
execute store result score @s Z0 run data get entity @s Pos[2] 100

#1Tick目以降 前TickのAECの座標と現Tickの弾の座標との差を算出 ブロックに当たるとずれる
scoreboard players operation @s[scores={X1=-2147483647..}] X1 -= @s X0
scoreboard players operation @s[scores={Y1=-2147483647..}] Y1 -= @s Y0
scoreboard players operation @s[scores={Z1=-2147483647..}] Z1 -= @s Z0
#1Tick目 スコアをセット
execute unless entity @s[scores={X1=-2147483647..}] run scoreboard players set @s X1 0
execute unless entity @s[scores={Y1=-2147483647..}] run scoreboard players set @s Y1 0
execute unless entity @s[scores={Z1=-2147483647..}] run scoreboard players set @s Z1 0
#ブロックに当たる tag=block 次Tickに除去
tag @s[tag=Block] remove Block
execute unless entity @s[scores={X1=-10..10},tag=!ChangeMoving] run tag @s add Block
execute unless entity @s[scores={Y1=-10..10},tag=!ChangeMoving] run tag @s add Block
execute unless entity @s[scores={Z1=-10..10},tag=!ChangeMoving] run tag @s add Block
#ブロックに当たると消える tag=unslide
tag @s[tag=Block,tag=Unslide] add Kill
#ブロックに当たるとくっつく tag=sticky
data merge entity @s[tag=Block,tag=Sticky] {NoGravity:1b}
tag @s[tag=Block,tag=Sticky] remove Move
#ブロックに当たると反射 tag=Reflect
execute if entity @s[tag=Block,tag=Reflect] run function main:physics/move/reflect

#スピード *speed/100倍する
scoreboard players operation @s X0 *= @s ProjSpd
scoreboard players operation @s Y0 *= @s ProjSpd
scoreboard players operation @s Z0 *= @s ProjSpd
scoreboard players operation @s X0 /= #100 Number
scoreboard players operation @s Y0 /= #100 Number
scoreboard players operation @s Z0 /= #100 Number
#ベクトル計算
execute rotated as @s run tp 0-0-1-0-0 ^ ^ ^1
#AECの座標取得
execute store result score @s X1 run data get entity 0-0-1-0-0 Pos[0] 100
execute store result score @s Y1 run data get entity 0-0-1-0-0 Pos[1] 100
execute store result score @s Z1 run data get entity 0-0-1-0-0 Pos[2] 100
#AEC消去
tp 0-0-1-0-0 -40692 1 -40700
#AECの座標のスピード補正
scoreboard players operation @s X1 *= @s ProjSpd
scoreboard players operation @s Y1 *= @s ProjSpd
scoreboard players operation @s Z1 *= @s ProjSpd
scoreboard players operation @s X1 /= #100 Number
scoreboard players operation @s Y1 /= #100 Number
scoreboard players operation @s Z1 /= #100 Number
#単位ベクトル*-1 算出
scoreboard players operation @s X0 -= @s X1
scoreboard players operation @s Y0 -= @s Y1
scoreboard players operation @s Z0 -= @s Z1

#重力時 
execute if entity @s[tag=Gravity] run function main:physics/move/gravity0

#Motion代入
execute store result entity @s Motion[0] double -0.01 run scoreboard players get @s X0
execute store result entity @s Motion[1] double -0.01 run scoreboard players get @s Y0
execute store result entity @s Motion[2] double -0.01 run scoreboard players get @s Z0
#スピード補正
scoreboard players operation @s X1 += @s X0
scoreboard players operation @s Y1 += @s Y0
scoreboard players operation @s Z1 += @s Z0
scoreboard players operation @s X1 *= #100 Number
scoreboard players operation @s Y1 *= #100 Number
scoreboard players operation @s Z1 *= #100 Number
scoreboard players operation @s X1 /= @s ProjSpd
scoreboard players operation @s Y1 /= @s ProjSpd
scoreboard players operation @s Z1 /= @s ProjSpd
scoreboard players operation @s X1 -= @s X0
scoreboard players operation @s Y1 -= @s Y0
scoreboard players operation @s Z1 -= @s Z0
#重力補正
execute if entity @s[tag=Gravity] run function main:physics/move/gravity1
#反射タグ除去
tag @s[tag=ReflectX] remove ReflectX
tag @s[tag=ReflectY] remove ReflectY
tag @s[tag=ReflectZ] remove ReflectZ
