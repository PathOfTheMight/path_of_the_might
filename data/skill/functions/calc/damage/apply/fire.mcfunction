#function scoreboard players operation @s EsRchDur = 
scoreboard players operation @s Es -= #Temp FiD
execute if score @s Es matches ..-1 run scoreboard players operation @s Hp += @s Es
scoreboard players set @s[scores={Es=..-1}] Es 0

scoreboard players operation #Temp D += #Temp FiD
