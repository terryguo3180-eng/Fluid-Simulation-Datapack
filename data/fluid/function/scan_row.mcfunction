execute if block ~ ~ ~ air run return run function fluid:scan_air

# AHHHHHHH finally fixed!!!!!!!!!!
execute align xyz positioned ~ ~ ~-1 if entity @e[type=marker,tag=existing,dx=0,dy=0,dz=1] positioned ~0.5 ~ ~1.5 run return run function fluid:scan_air

# Each block corresponds to 4 particles
execute summon marker at @s run function fluid:new_particle
scoreboard players add y fluid 1000
execute positioned ~ ~0.5 ~ summon marker at @s run function fluid:new_particle
scoreboard players remove y fluid 1000
scoreboard players remove x fluid 1000
execute positioned ~-0.5 ~ ~ summon marker at @s run function fluid:new_particle
scoreboard players add y fluid 1000
execute positioned ~-0.5 ~0.5 ~ summon marker at @s run function fluid:new_particle
scoreboard players remove y fluid 1000
scoreboard players add x fluid 1000
function fluid:scan_air
