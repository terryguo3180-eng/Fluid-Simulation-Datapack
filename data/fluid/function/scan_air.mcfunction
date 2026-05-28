scoreboard players add x fluid 2000
tp ~1 ~ ~
execute if score x fluid < xmax fluid at @s run function fluid:scan_row
