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
    XP = 0,
    Pets = {},
    DailyLoginStreak = 1
}

game.Players.PlayerAdded:Connect(function(Player)
    pcall(function()
        local Data = DataStore:GetAsync(tostring(Player.UserId))
        if Data == nil then
            Data = deepCopy(Template)
            DataStore:SetAsync(tostring(Player.UserId), Data) 
        end
        print(Data.XP)
        print(Data.Cash)
    end)
end)
