scoreboard players operation #size Number = @s size
scoreboard players operation #size Number += #AoE Number

execute if score #Shotgun Number = #ShotgunTemp Number run function skill:calc/shotgun/large2
scoreboard players operation #Shotgun Number = #ShotgunTemp Number
