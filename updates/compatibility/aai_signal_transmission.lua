if mods["aai-signal-transmission"] then
  data:extend({
    {
      type = "recipe",
      name = "cube-aai-signal-sender",
      ingredients = {
        {type = "item", name = "cube-spectral-processor", amount = 10},
        {type = "item", name = "battery", amount = 20},
        {type = "item", name = "cube-rare-metals", amount = 10},
        {type = "item", name = "cube-advanced-engine", amount = 10},
      },
      result = "aai-signal-sender",
      energy_required = 10,
      category = "cube-fabricator-handcraft",
      enabled = false,
    },
    {
      type = "recipe",
      name = "cube-aai-signal-receiver",
      ingredients = {
        {type = "item", name = "cube-spectral-processor", amount = 20},
        {type = "item", name = "cube-sophisticated-matter-unit", amount = 20},
        {type = "item", name = "cube-rare-metals", amount = 20},
        {type = "item", name = "cube-advanced-engine", amount = 10},
      },
      result = "aai-signal-receiver",
      energy_required = 10,
      category = "cube-fabricator-handcraft",
      enabled = false,
    },
    {
      type = "technology",
      name = "aai-signal-transmission",
      icon_size = 256,
      icon = "__aai-signal-transmission__/graphics/technology/signal-transmission.png",
      effects = {
        {type = "unlock-recipe", recipe = "cube-aai-signal-sender"},
        {type = "unlock-recipe", recipe = "cube-aai-signal-receiver"},
      },
      prerequisites = {
        "cube-battery",
        "cube-spectral-processor",
      },
      unit = tech_cost_unit("2", 180),
      order = "x-0-0",
    },
  })

  add_mystery_recipe(1, "aai-signal-sender", "cube-spectral-processor")
  add_mystery_recipe(1, "aai-signal-receiver", "cube-spectral-processor")

  data.raw.item["aai-signal-sender"].subgroup = "cube-combinator-extra"
  data.raw.item["aai-signal-sender"].order = "cube-a-z-a"
  data.raw.item["aai-signal-receiver"].subgroup = "cube-combinator-extra"
  data.raw.item["aai-signal-receiver"].order = "cube-a-z-b"
  data.raw.roboport["aai-signal-sender"].energy_usage = "5MW"
end
