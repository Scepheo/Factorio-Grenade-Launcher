data:extend(
{
  -- Grenade launcher
  {
    type = "gun",
    name = "grenade-launcher",
    icon = "__GrenadeLauncher__/graphics/icons/grenade-launcher.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "d[grenade-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "grenade",
      movement_slow_down_factor = 0.8,
      cooldown = 60,
      projectile_creation_distance = 0.6,
      range = 25,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7
        }
      }
    },
    stack_size = 5
  },

  -- Launchable grenade
  {
    type = "ammo",
    name = "launcher-grenade",
    icon = "__base__/graphics/icons/grenade.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "grenade",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "grenade",
          starting_speed = 0.3
        }
      }
    },
    subgroup = "ammo",
    order = "d[grenade-launcher]-a[normal]",
    stack_size = 200
  },

  -- Launchable cluster grenade
  {
    type = "ammo",
    name = "launcher-grenade-cluster",
    icon = "__base__/graphics/icons/cluster-grenade.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "grenade",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "cluster-grenade",
          starting_speed = 0.3
        }
      }
    },
    subgroup = "ammo",
    order = "d[grenade-launcher]-a[cluster]",
    stack_size = 200
  }
}
)
