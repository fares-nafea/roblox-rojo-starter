local Debounce = false
game.Workspace.Lava.Touched:Connect(function(otherPart)
    local Player = game.Players:GetPlayerFromCharacter(otherPart.Parent)

    if Player then
        if Debounce then return end
        Debounce = true

        local Character = Player.Character
        Character.Head:Destroy()

        task.wait(3)

        Debounce = false
    end
end)