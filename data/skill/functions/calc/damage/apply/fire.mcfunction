#function scoreboard players operation @s EsRchDur = 
scoreboard players operation @s EsH -= #FiD Number
execute if score @s EsH matches ..-1 run scoreboard players operation @s HpH += @s EsH
scoreboard players set @s[scores={EsH=..-1}] EsH 0
#tellraw @a {"score":{"name":"#FiD","objective":"Number"}}