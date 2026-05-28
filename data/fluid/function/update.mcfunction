# If block is destroyed, kill the particle
execute as @e[type=marker,tag=particle] at @s if block ~ ~ ~ air run kill @s
# Detect if new blocks are placed
tag @e[type=marker,tag=particle] add existing
execute at @e[type=marker,tag=origin,limit=1] positioned ~ ~-0.5 ~ run function fluid:scan

execute as @e[type=marker,tag=particle,scores={is_wall=0}] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=particle] at @s run function fluid:update_density
execute as @e[type=marker,tag=particle] at @s run function fluid:update_force
execute as @e[type=marker,tag=particle] at @s run function fluid:update_acc_vel
execute as @e[type=marker,tag=particle] at @s run function fluid:update_pos
execute as @e[type=marker,tag=particle,scores={is_wall=0}] at @s run function fluid:set_block with entity @s data
execute as @e[type=marker,tag=particle,scores={is_wall=1}] at @s run setblock ~ ~ ~ bedrock
