local BaseUrl = "https://raw.githubusercontent.com/jsnyxen/nyxen-hub/main/games/"

local Games = {
    [116497287371701] = "karinderya.lua",
}

local GameFile = Games[game.PlaceId]

if GameFile then
    local Success, Error = pcall(function()
        local Source = game:HttpGet(BaseUrl .. GameFile)
        loadstring(Source)()
    end)

    if not Success then
        warn("Failed to load " .. GameFile .. ": " .. tostring(Error))
    end
else
    local Success, Error = pcall(function()
        local Source = game:HttpGet(
            "https://raw.githubusercontent.com/jsnyxen/nyxen-hub/main/universal.lua"
        )
        loadstring(Source)()
    end)

    if not Success then
        warn("Failed to load universal.lua: " .. tostring(Error))
    end
end
