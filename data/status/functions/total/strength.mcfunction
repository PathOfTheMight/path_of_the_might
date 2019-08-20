#Str
scoreboard players operation @s Str = @s BStr
scoreboard players operation @s Str += @s PStr
scoreboard players operation @s Str += @s EStr
#StrIncP
scoreboard players operation #StrIncP Number = @s PStrIncP
scoreboard players operation #StrIncP Number += @s EStrIncP
scoreboard players operation #StrIncP Number += #100 Number
scoreboard players operation @s Str *= #StrIncP Number
scoreboard players operation @s Str /= #100 Number
