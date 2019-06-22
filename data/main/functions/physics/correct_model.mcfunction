execute if entity @s[tag=CM3] run tp @s ~ ~ ~ ~-1 ~
tag @s[tag=CM3] remove CorrectModel
execute if entity @s[tag=CM2,tag=!CM3] run tp @s ~ ~ ~ ~1 ~
tag @s[tag=CM2,tag=!CM3] add CM3
execute if entity @s[tag=CM1,tag=!CM2] run tp @s ~ ~ ~ ~-1 ~
tag @s[tag=CM1,tag=!CM2] add CM2
execute if entity @s[tag=!CM1] run tp @s ~ ~ ~ ~1 ~
tag @s[tag=!CM1] add CM1
