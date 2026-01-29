local Players = game:GetService("Players")
local KickedPlayers = {}

-- بان
local function BanPlayer(player)
    if not table.find(KickedPlayers, player.UserId) then
        table.insert(KickedPlayers, player.UserId)
    end
    player:Kick("You have been banned")
end


local function UnbanPlayer(userId)
    local index = table.find(KickedPlayers, userId)
    if index then
        table.remove(KickedPlayers, index)
    end
end

Players.PlayerAdded:Connect(function(player)
    if table.find(KickedPlayers, player.UserId) then
        player:Kick("You have been banned")
    end
end)

-- مثال استخدام
-- BanPlayer(player)
-- UnbanPlayer(123456789)
