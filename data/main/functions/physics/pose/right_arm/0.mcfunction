execute store result score #Angle Number run data get entity @s Pose.RightArm[0] 100
scoreboard players operation #Angle Number += @s Number
execute store result entity @s Pose.RightArm[0] float 0.01 run scoreboard players get #Angle Number
