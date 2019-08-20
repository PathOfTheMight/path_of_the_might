#execute if entity @s[tag=] run scoreboard players operation #Temp  += #AffixValue Number
execute if entity @s[tag=IncArmor] run scoreboard players operation #Temp EArm += #AffixValue Number
execute if entity @s[tag=AddArmor_Life] run scoreboard players operation #Temp EMaxHp += #AffixValue2 Number
execute if entity @s[tag=IncArmor_StunRecovery] run scoreboard players operation #Temp EStnBloRcvIncP += #AffixValue2 Number
execute if entity @s[tag=Life] run scoreboard players operation #Temp EMaxHp += #AffixValue Number
