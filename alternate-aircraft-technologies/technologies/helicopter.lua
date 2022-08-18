-- Make the Helicopter Revival technology depend on robotics instead of rocketry.
if settings.startup["aat-helicopter-after-robotics"].value then
    table.remove(data.raw.technology["heli-technology"].prerequisites, "rocketry")
    table.insert(data.raw.technology["heli-technology"].prerequisites, "robotics")
end
