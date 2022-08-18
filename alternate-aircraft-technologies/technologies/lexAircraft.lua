data.raw.technology["lex-jet-engine"].prerequisites = {"automobilism", "advanced-electronics-2", "rocketry", "robotics"}
data.raw.technology["lex-jet-engine"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
}


data.raw.technology["lex-flying-cargo-ships"].unit.count = 400 -- Original cost 500
data.raw.technology["lex-flying-cargo-ships"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
}


data.raw.technology["lex-flying-gunship-ships"].prerequisites = {"lex-jet-engine", "heli-technology", "military-4"}
data.raw.technology["lex-flying-gunship-ships"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
}


data.raw.technology["lex-flying-heavyship-ships"].prerequisites = {"lex-flying-gunship-ships"}
data.raw.technology["lex-flying-heavyship-ships"].unit.count = 1250 -- Original cost 2500
data.raw.technology["lex-flying-heavyship-ships"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
}


if mods["Krastorio2"] then
    table.insert(data.raw.technology["lex-flying-heavyship-ships"].prerequisites, "kr-military-5")
end


if mods["space-exploration"] then
    table.insert(data.raw.technology["lex-jet-engine"].unit.ingredients, {"se-rocket-science-pack", 1})
    table.insert(data.raw.technology["lex-flying-cargo-ships"].unit.ingredients, {"se-rocket-science-pack", 1})
    table.insert(data.raw.technology["lex-flying-gunship-ships"].unit.ingredients, {"se-rocket-science-pack", 1})
    table.insert(data.raw.technology["lex-flying-heavyship-ships"].unit.ingredients, {"se-rocket-science-pack", 1})
end
