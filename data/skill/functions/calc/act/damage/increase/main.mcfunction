scoreboard players operation #CurDIncP Number += #OthIncP Number
scoreboard players add #CurDIncP Number 100
scoreboard players operation #CurD Number *= #CurDIncP Number
scoreboard players operation #CurD Number /= #100 Number

#0-0のタグでincrease対象決定
#execute if data 00000000-0000-0000-0000-0000000000 {Tags:[Physical]} run function skill:calc/act/damage/increase/physical
#execute if data 00000000-0000-0000-0000-0000000000 {Tags:[Lightning]} run function skill:calc/act/damage/increase/lightning
#execute if data 00000000-0000-0000-0000-0000000000 {Tags:[Cold]} run function skill:calc/act/damage/increase/cold
#execute if data 00000000-0000-0000-0000-0000000000 {Tags:[Fire]} run function skill:calc/act/damage/increase/fire
#execute if data 00000000-0000-0000-0000-0000000000 {Tags:[Chaos]} run function skill:calc/act/damage/increase/chaos