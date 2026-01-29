local KickedPlayers = {}

game.Players.PlayerAdded:Connect(function(player)

    -- لو اللاعب متبند قبل كده
    if table.find(KickedPlayers, player.UserId) then
        player:Kick("You have been banned")
        return
    end

    -- مثال: تطرده بعد 5 ثواني
    task.wait(5)

    table.insert(KickedPlayers, player.UserId)
    player:Kick("You have been banned")

end)
