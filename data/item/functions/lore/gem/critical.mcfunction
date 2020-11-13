scoreboard players operation #CriPInteger Number = #Temp CriP
scoreboard players operation #CriPDecimal Number = #Temp CriP
scoreboard players operation #CriPInteger Number /= #100 Number
scoreboard players operation #CriPDecimal Number %= #100 Number
data modify block 2 4 2 Text1 set value '[{"text":"クリティカル発生率: ","color":"gray","bold":true,"italic":false},{"translate":"%s.%s%%","color":"white","bold":false,"italic":false,"with":[{"score":{"name":"#CriPInteger","objective":"Number"}},{"score":{"name":"#CriPDecimal","objective":"Number"}}]}]'
data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
