local jetEngineAfterHelicopter = settings.startup["aat-aircraft-after-helicopter"].value
local removeRocketPacks = settings.startup["aat-remove-rocket-science-packs-se"].value
local useRegularPacks = settings.startup["aat-use-regular-heavyship-tech-with-se"].value
local reduceTechCost = settings.startup["aat-reduce-tech-cost"].value
local techCost = 1000 -- Original cost 2500


-- Make the Jet Engine technology depend on Helicopter Revival instead of robotics.
if jetEngineAfterHelicopter then
    data.raw.technology["lex-jet-engine"].prerequisites = {"heli-technology"}
end

if mods["space-exploration"] then
    techCost = 1250
    if removeRocketPacks then
        -- This is added in the original mod with SE but it would delay the use beyond rockets.
        table.remove(data.raw.technology["lex-flying-heavyship-ships"].unit.ingredients, {"se-rocket-science-pack", 1})
        techCost = 1500

        if useRegularPacks then
            -- These 2 are removed in the original mod with SE.
            table.insert(data.raw.technology["lex-flying-heavyship-ships"].unit.ingredients, {"utility-science-pack", 1})
            table.insert(data.raw.technology["lex-flying-heavyship-ships"].unit.ingredients, {"production-science-pack", 1})
            techCost = 1000
        end
    end
end

-- Reduce the cost from 2500 to 1500, 1250 or 1000 because the total cost is pack types * count. That are 1250 packs at minimum more, no thanks!).
if reduceTechCost then
    data.raw.technology["lex-flying-heavyship-ships"].unit.count = techCost
end