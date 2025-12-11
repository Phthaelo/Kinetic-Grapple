#Run to Remove all Scoreboard Objectives and disable Datapack before deletion

scoreboard objectives remove impulse_grapple
scoreboard objectives remove impulse_grapple.fishing_rod
scoreboard objectives remove impulse_grapple.UUID0
scoreboard objectives remove impulse_grapple.UUID1
scoreboard objectives remove impulse_grapple.UUID2
scoreboard objectives remove impulse_grapple.UUID3

data remove storage impulse_grapple:storage grapple_strength

datapack disable "file/Impulse Grapple v1.0.0"
datapack disable "file/Impulse Grapple v1.0.0.zip"