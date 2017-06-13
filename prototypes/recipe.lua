data:extend(
{
  -- Grenade launcher
  {
    type = "recipe",
    name = "grenade-launcher",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 5}
    },
    result = "grenade-launcher"
  },

  -- Launchable grenade
  {
    type = "recipe",
    name = "launchable-grenade",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"grenade", 1},
      {"electronic-circuit", 1}
    },
    result = "launchable-grenade"
  },

  -- Launchable cluster grenade
  {
    type = "recipe",
    name = "launchable-cluster-grenade",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"cluster-grenade", 1},
      {"electronic-circuit", 1}
    },
    result = "launchable-cluster-grenade"
  }
}
)
