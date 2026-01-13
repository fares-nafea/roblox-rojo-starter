local MessagingService = game:GetService("MessagingService")

MessagingService:SubscribeAsync("Ban", function(massage)
    local userId = massage.Data.UserId
    if not userId then return end

    local player = game.Players:GetPlayerByUserId(userId)
    if not player then return end

    player:Kick(massage.Data.Massage)
end)
