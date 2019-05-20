#scoreboard players operation @s map = 
scoreboard players operation @s Lvl = #BaseLvl Number
scoreboard players operation @s Exp = #BaseExp Number
scoreboard players operation @s Hp = #BaseHp Number
scoreboard players operation @s MaxHp = #BaseHp Number
scoreboard players operation @s Es = #BaseEs Number
scoreboard players operation @s MaxEs = #BaseEs Number
scoreboard players operation @s Arm = #BaseArm Number
scoreboard players operation @s Eva = #BaseEva Number
scoreboard players operation @s Acc = #BaseAcc Number
scoreboard players operation @s D = #BaseDmg Number

#WaitTimeH
execute store result score #RandMod Number run data get entity @s ArmorItems[0].tag.AI[0] 0.02
function main:rand
scoreboard players operation #RandMod Number *= #100 Number
scoreboard players operation @s WaitTimeH = #RandMod Number

tag @e[tag=New] remove New
