#Run by Hook Items each tick to check for Bobber with matching UUID scores

function impulse_grapple:uuid_cache_score
execute as @e[type=fishing_bobber] if score @s impulse_grapple.UUID0 = .Cache impulse_grapple.UUID0 if score @s impulse_grapple.UUID1 = .Cache impulse_grapple.UUID1 if score @s impulse_grapple.UUID2 = .Cache impulse_grapple.UUID2 if score @s impulse_grapple.UUID3 = .Cache impulse_grapple.UUID3 run tag @s add impulse_grapple.this

execute unless entity @e[type=fishing_bobber,tag=impulse_grapple.this] run kill @s
tag @e remove impulse_grapple.this