#rotationY の取得
execute store result score #RotationY Number run data get entity @s Rotation[1] 1
#-DiffuseY ~ DiffuseYの乱数生成
scoreboard players operation #RandMod Number = #DiffuseY Number
scoreboard players operation #RandMod Number *= #2 Number
scoreboard players add #RandMod Number 1
function main:rand
scoreboard players operation #RandMod Number -= #DiffuseY Number
#rotationY に乱数を足す
scoreboard players operation #RotationY Number += #RandMod Number
#RotationY>90の時
tag @s[scores={rotationY=90..}] add Rotation90+
scoreboard players operation @s[tag=Rotation90+] rotationY *= #-1 Number
scoreboard players add @s[tag=Rotation90+] rotationY 18000
tp @s[tag=Rotation90+] ~ ~ ~ ~180 ~
tag @s[tag=Rotation90+] remove Rotation90+
#RotationY<-90の時 
tag @s[scores={rotationY=..-90}] add Rotation-90
scoreboard players operation @s[tag=Rotation-90] rotationY *= #-1 Number
scoreboard players remove @s[tag=Rotation-90] rotationY 18000
tp @s[tag=Rotation-90] ~ ~ ~ ~180 ~
tag @s[tag=Rotation-90] remove Rotation-90
#rotation[1]に代入
execute store result entity @s Rotation[1] float 1 run scoreboard players get #RotationY Number
