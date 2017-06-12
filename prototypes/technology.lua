-- TODO: Use logic to insert these in the technology for (cluster) grenades, so they're more robust
-- and automatically moved if that ever changes
local tech = data.raw.technology["military-2"]
table.insert(tech.effects, {type = "unlock-recipe", recipe = "grenade-launcher"})
table.insert(tech.effects, {type = "unlock-recipe", recipe = "launcher-grenade"})
table.insert(tech.effects, {type = "unlock-recipe", recipe = "launcher-grenade-cluster"})
