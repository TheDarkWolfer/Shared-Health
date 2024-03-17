# Shared-Health
A minecraft 1.20.x datapack that makes all players share a health bar

### Installation
To install the datapack, simply download the shared-health.zip file and extract it in your world's datapack directory.
If you don't see a boss bar at the top of the screen when joining (that says "Global HP x/50000), run `function shared_health:init`


### Use
There are a few more things other than the shared health bar, which are listed below ;
-Totem of undying and enchanted golden apples can be crafted, although their recipes are costly
-Respawning/death works differently : unless under Y=50, you will respawn where you died, to smoothen the gameplay.
-You can't use a bed/respawn anchor to set your spawn anymore, since death works differently now
-When the global health pool reaches 0, all players will be set to spectator (unless they have the `admin` tag)
-Totems still work, only they restore 500 HP if/when the global health pool reaches 0
-Regeneration, absorbsion and resistance instead restore HP, depending on their rarity
-Dealing damage to mobs will restore health to the global pool (scaling with the damage dealt)
-PVP through direct means is kind of impossible, since you dealing damage and them receiving it would cancel out, so you'd have to
  resort to PVP through end crystals or TNT
-Your vanilla health bar will be full all the time, except if you take too much damage at once (then you'll r
  espawn according to the aforementionned rules). Best way I currently have of "disabling" it.

### For admins
If you wish to reset the global health pool, run `scoreboard players set @a globalHP 50000`
You'll need to ensure all players are present when you install the datapack, else you'll need to manually
sync all the health counters (which you can do using the aforementionned `scoreboard` command)
I'll provide an uninstall script later, 
