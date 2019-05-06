#MapからPos計算
execute store result score #WarpX Number run scoreboard players operation #WarpZ Number = @s map
#x,y,z=(map%21-10)*4096-32,1,(map/21-10)*4096-32
scoreboard players operation #WarpX Number %= #21 Number
#scoreboard players operation #WarpX Number -= #10 Number
#scoreboard players operation #WarpX Number *= #4096 Number
#scoreboard players remove #WarpX Number 32

scoreboard players operation #WarpZ Number /= #21 Number
#scoreboard players operation #WarpZ Number -= #10 Number
#scoreboard players operation #WarpZ Number *= #4096 Number
#scoreboard players remove #WarpZ Number 32

execute if score #WarpX Number matches 0 run tp @s -40992 ~ ~
execute if score #WarpX Number matches 1 run tp @s -36896 ~ ~
execute if score #WarpX Number matches 2 run tp @s -32800 ~ ~
execute if score #WarpX Number matches 3 run tp @s -28704 ~ ~
execute if score #WarpX Number matches 4 run tp @s -24608 ~ ~
execute if score #WarpX Number matches 5 run tp @s -20512 ~ ~
execute if score #WarpX Number matches 6 run tp @s -16416 ~ ~
execute if score #WarpX Number matches 7 run tp @s -12320 ~ ~
execute if score #WarpX Number matches 8 run tp @s -8224 ~ ~
execute if score #WarpX Number matches 9 run tp @s -4128 ~ ~
execute if score #WarpX Number matches 10 run tp @s -32 ~ ~
execute if score #WarpX Number matches 11 run tp @s 4064 ~ ~
execute if score #WarpX Number matches 12 run tp @s 8160 ~ ~
execute if score #WarpX Number matches 13 run tp @s 12256 ~ ~
execute if score #WarpX Number matches 14 run tp @s 16352 ~ ~
execute if score #WarpX Number matches 15 run tp @s 20448 ~ ~
execute if score #WarpX Number matches 16 run tp @s 24544 ~ ~
execute if score #WarpX Number matches 17 run tp @s 28640 ~ ~
execute if score #WarpX Number matches 18 run tp @s 32736 ~ ~
execute if score #WarpX Number matches 19 run tp @s 36832 ~ ~
execute if score #WarpX Number matches 20 run tp @s 40928 ~ ~
execute if score #WarpX Number matches 21 run tp @s 45024 ~ ~

execute if score #WarpZ Number matches 0 positioned as @s run tp @s ~ ~ -40992
execute if score #WarpZ Number matches 1 positioned as @s run tp @s ~ ~ -36896
execute if score #WarpZ Number matches 2 positioned as @s run tp @s ~ ~ -32800
execute if score #WarpZ Number matches 3 positioned as @s run tp @s ~ ~ -28704
execute if score #WarpZ Number matches 4 positioned as @s run tp @s ~ ~ -24608
execute if score #WarpZ Number matches 5 positioned as @s run tp @s ~ ~ -20512
execute if score #WarpZ Number matches 6 positioned as @s run tp @s ~ ~ -16416
execute if score #WarpZ Number matches 7 positioned as @s run tp @s ~ ~ -12320
execute if score #WarpZ Number matches 8 positioned as @s run tp @s ~ ~ -8224
execute if score #WarpZ Number matches 9 positioned as @s run tp @s ~ ~ -4128
execute if score #WarpZ Number matches 10 positioned as @s run tp @s ~ ~ -32
execute if score #WarpZ Number matches 11 positioned as @s run tp @s ~ ~ 4064
execute if score #WarpZ Number matches 12 positioned as @s run tp @s ~ ~ 8160
execute if score #WarpZ Number matches 13 positioned as @s run tp @s ~ ~ 12256
execute if score #WarpZ Number matches 14 positioned as @s run tp @s ~ ~ 16352
execute if score #WarpZ Number matches 15 positioned as @s run tp @s ~ ~ 20448
execute if score #WarpZ Number matches 16 positioned as @s run tp @s ~ ~ 24544
execute if score #WarpZ Number matches 17 positioned as @s run tp @s ~ ~ 28640
execute if score #WarpZ Number matches 18 positioned as @s run tp @s ~ ~ 32736
execute if score #WarpZ Number matches 19 positioned as @s run tp @s ~ ~ 36832
execute if score #WarpZ Number matches 20 positioned as @s run tp @s ~ ~ 40928
execute if score #WarpZ Number matches 21 positioned as @s run tp @s ~ ~ 45024

execute positioned as @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~  1 1
