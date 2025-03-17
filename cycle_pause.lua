local function cycle_pause()
    if mp.get_property_bool("pause") then
        if math.abs(mp.get_property_number("time-pos", 0) - mp.get_property_number("duration", 0)) < 0.15 then
            mp.set_property("percent-pos", "0")
        end
        mp.set_property("pause", "no")
    else
        mp.set_property("pause", "yes")
    end
end

mp.add_key_binding(nil, "cycle_pause", cycle_pause)
