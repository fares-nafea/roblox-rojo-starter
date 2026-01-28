local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore("MyDataStore")

local function deepCopy(original)
    local copy = {}
    for k, v in pairs(original) do
        if type(v) == "table" then
            v = deepCopy(v)
        end
        copy[k] = v
    end
    return copy
end

local Template = {
    Cash = 50,
    XP = 5,
    Pets = {},
    DailyLoginStreak = 1
}

game.Players.PlayerAdded:Connect(function(Player)
    local success, Data = pcall(function()
        return DataStore:UpdateAsync(tostring(Player.UserId), function(oldData)
            if oldData == nil then
                return deepCopy(Template)
            else
                return oldData
            end
        end)
    end)

    if success then
        print("XP:", Data.XP)
        print("Cash:", Data.Cash)
    else
        warn("Failed to load data for player:", Player.Name)
    end
end)
