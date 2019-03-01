scoreboard players operation #PhD Number = #BasePhD Number
# PhD = 10 * #PhD ^ 2 / (Arm + 10 * #PhD)
scoreboard players operation #Arm+10Ph Number = #PhD Number
scoreboard players operation #Arm+10Ph Number *= #10 Number
scoreboard players operation #Arm+10Ph Number += @s Arm
scoreboard players operation #PhD Number *= #PhD Number
scoreboard players operation #PhD Number *= #10 Number
scoreboard players operation #PhD Number /= #Arm+10Ph Number

function skill:calc/damage/apply/physical
