#Middleman function to store Grapple Strength

tag @s remove impulse_grapple.grappling

#Move Grapple Strength to Storage
execute store result storage impulse_grapple:storage grapple_strength int 1 run scoreboard players get @s impulse_grapple

function impulse_grapple:impulse with storage impulse_grapple:storage