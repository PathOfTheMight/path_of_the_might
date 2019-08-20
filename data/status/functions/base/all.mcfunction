#life 1200*level+5000
scoreboard players set @s BMaxHp 1200
scoreboard players operation @s BMaxHp *= @s Lvl
scoreboard players add @s BMaxHp 5000

#mana 600*level+4000
scoreboard players set @s BMaxMp 600
scoreboard players operation @s BMaxMp *= @s Lvl
scoreboard players add @s BMaxMp 4000

#Eva 3*level+53
scoreboard players set @s BEva 3
scoreboard players operation @s BEva *= @s Lvl
scoreboard players add @s BEva 53

#Attributes
scoreboard players set @s BStr 20 
scoreboard players set @s BDex 20
scoreboard players set @s BInt 20
