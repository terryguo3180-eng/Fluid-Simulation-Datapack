scoreboard players operation @s x = x fluid
scoreboard players operation @s y = y fluid
tag @s add particle
execute if block ~ ~ ~ bedrock run return run scoreboard players set @s is_wall 1
scoreboard players set @s is_wall 0
function fluid:get_block
