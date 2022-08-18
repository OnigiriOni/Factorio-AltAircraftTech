-- Make the Helicopter Revival technology depend on robotics instead of rocketry.
--if settings.startup["aat-helicopter-after-robotics"].value then
--    table.insert(data.raw.technology["heli-technology"].prerequisites, {"robotics"})
--end






table.insert(data.raw.technology["heli-technology"].prerequisites, "robotics")
data.raw.technology["heli-technology"].unit.ingredients = {
    {"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"se-rocket-science-pack", 1}, -- SE
}



--if mods["space-exploration"] then
--    table.insert(data.raw.technology["heli-technology"].unit.ingredients, {"se-rocket-science-pack", 1})
--end