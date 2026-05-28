scoreboard players set y fluid 0
scoreboard players operation xmax fluid = Width fluid
scoreboard players operation xmax fluid *= 2000 fluid
scoreboard players operation ymax fluid = Height fluid
scoreboard players operation ymax fluid *= 2000 fluid
execute summon marker at @s run function fluid:scan_col
