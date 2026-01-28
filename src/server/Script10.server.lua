local cash = 500

local function buyItem(object)
    if cash >= object:GetAttribute("Price") then
        print('you can buy this item!')
    else
        print('you cannot buy this item!')
    end
end

buyItem(game.ReplicatedStorage.Staff)