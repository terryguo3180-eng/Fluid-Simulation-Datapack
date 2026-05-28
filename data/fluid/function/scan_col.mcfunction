summon marker ~ ~-1 ~ {Tags:["next_col"]}
scoreboard players set x fluid 0
execute at @s run function fluid:scan_row
scoreboard players add y fluid 2000
tp @s @e[type=marker,tag=next_col,limit=1]
kill @e[type=marker,tag=next_col,limit=1]
execute if score y fluid < ymax fluid at @s run return run function fluid:scan_col
kill @s
