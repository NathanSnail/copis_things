local to_insert = {
    {
        id                = "DEV",
        name              = "Dev",
        description       = "cast state data",
        sprite            = "mods/copis_things/files/ui_gfx/gun_actions/dev_meta.png",
        type              = ACTION_TYPE_OTHER,
        spawn_level       = "0,0",
        spawn_probability = "0,0",
        price             = 0,
        mana              = 0,
        ai_never_uses     = true,
        action            = function(recursion_level, iteration)
            if not reflecting then
                print("[COPI'S THINGS CAST STATE PRINT START]")
                for k,v in pairs(c) do
                    print(k.." = "..tostring(v));
                end
                print("[COPI'S THINGS CAST STATE PRINT END]")
            end
        end,
    },
}

for _, value in ipairs(to_insert) do
    if (value.author == nil) then
        value.author = "Copi"
    end
    value.id = "COPIS_THINGS_" .. value.id
    table.insert(actions, value)
end