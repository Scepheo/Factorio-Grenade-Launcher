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
    name = "launcher-grenade",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"grenade", 1},
      {"electronic-circuit", 1}
    },
    result = "launcher-grenade"
  },

  -- Launchable cluster grenade
  {
    type = "recipe",
    name = "launcher-grenade-cluster",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"cluster-grenade", 1},
      {"electronic-circuit", 1}
    },
    result = "launcher-grenade-cluster"
  }
}
)
