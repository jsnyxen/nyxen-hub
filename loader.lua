local BaseUrl = "https://raw.githubusercontent.com/jsnyxen/nyxen-hub/main/games/"

local Games = {
[116497287371701] = "karinderya.lua",
[17625359962] = "rivals.lua",
[117398147513099] = "rivals.lua",
[79268393072444] = "sell-lemons.lua",
[83038462357724] = "digandclean.lua",
}

local GameFile = Games[game.PlaceId]

if GameFile then
    loadstring(game:HttpGet(BaseUrl .. GameFile))()
else
    loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/jsnyxen/nyxen-hub/main/universal.lua"
    ))()
end
