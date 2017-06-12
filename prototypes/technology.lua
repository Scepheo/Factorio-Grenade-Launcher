-- This code finds the technology or technologies that unlock the recipes for Grenades and Cluster
-- grenades. It then inserts the unlocking of the Grenade launcher, Launchable grenades and
-- Launchable cluster grenades as appropriate
local grenadesDone = false
local clusterGrenadesDone = false

local grenadeLauncherUnlock = {type = "unlock-recipe", recipe = "grenade-launcher"}
local launchableGrenadeUnlock = {type = "unlock-recipe", recipe = "launcher-grenade"}
local launchableClusterGrenadeUnlock = {type = "unlock-recipe", recipe = "launcher-grenade-cluster"}

for _, technology in pairs(data.raw.technology) do
    local effects = technology.effects

    if effects then
        local unlocksGrenadeRecipe = false
        local unlocksClusterGrenadeRecipe = false

        for _, effect in pairs(effects) do
            if effect.type == "unlock-recipe" then
                if effect.recipe == "grenade" then
                    table.insert(effects, grenadeLauncherUnlock)
                    table.insert(effects, launchableGrenadeUnlock)
                    grenadesDone = true
                end

                if effect.recipe == "cluster-grenade" then
                    table.insert(effects, launchableClusterGrenadeUnlock)
                    clusterGrenadesDone = true
                end

                if grenadesDone and clusterGrenadesDone then
                    return
                end
            end
        end
    end
end
