
game.Players.PlayerAdded:Connect(function(player)
    local deaths = 0
    player.CharacterAdded:Connect(function(character)
        print(player.Name .. " has Spawned")
        local humanoid = character:WaitForChild("Humanoid")

        humanoid.Died:Connect(function()
            print(player.Name .. " has died")
            deaths += 1

            if deaths >= 3 then
                player:Kick("Out of lives!")
            end
        end)
    end)
end)