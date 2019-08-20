#Exp
scoreboard players operation #BaseExp Number *= #PackExp Number
scoreboard players operation #BaseExp Number /= #100 Number
#Hp
scoreboard players operation #BaseHp Number *= #PackHp Number
scoreboard players operation #BaseHp Number /= #100 Number
#Es
scoreboard players operation #BaseEs Number *= #PackEs Number
scoreboard players operation #BaseEs Number /= #100 Number
#Arm
scoreboard players operation #BaseArm Number *= #PackArm Number
scoreboard players operation #BaseArm Number /= #100 Number
#Eva
scoreboard players operation #BaseEva Number *= #PackEva Number
scoreboard players operation #BaseEva Number /= #100 Number
#Acc
scoreboard players operation #BaseAcc Number *= #PackAcc Number
scoreboard players operation #BaseAcc Number /= #100 Number
#D
scoreboard players operation #BaseD Number *= #PackD Number
scoreboard players operation #BaseD Number /= #100 Number

scoreboard players operation @s Exp = #BaseExp Number
scoreboard players operation @s Hp = #BaseHp Number
scoreboard players operation @s MaxHp = #BaseHp Number
scoreboard players operation @s Es = #BaseEs Number
scoreboard players operation @s MaxEs = #BaseEs Number
scoreboard players operation @s Arm = #BaseArm Number
scoreboard players operation @s Eva = #BaseEva Number
scoreboard players operation @s Acc = #BaseAcc Number
scoreboard players operation @s D = #BaseD Number

#WaitTimeH
execute store result score #RandMod Number run data get entity @s ArmorItems[0].tag.AI[0] 0.02
function main:rand
scoreboard players operation #RandMod Number *= #100 Number
scoreboard players operation @s WaitTimeH = #RandMod Number

scoreboard players operation @s ID = #Rand Number

tag @s remove New
