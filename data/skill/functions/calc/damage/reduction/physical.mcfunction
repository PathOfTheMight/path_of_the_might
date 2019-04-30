# PhD = 10 * #PhD ^ 2 / (Arm + 10 * #PhD)
scoreboard players operation #Arm+10Ph Number = #Temp PhD
scoreboard players operation #Arm+10Ph Number *= #10 Number
scoreboard players operation #Arm+10Ph Number += @s Arm
scoreboard players operation #Temp PhD *= #Temp PhD
scoreboard players operation #Temp PhD *= #10 Number
scoreboard players operation #Temp PhD /= #Arm+10Ph Number
execute if entity @s[type=minecraft:player] run scoreboard players operation #Temp PhD *= #100 Number

function skill:calc/damage/apply/physical
