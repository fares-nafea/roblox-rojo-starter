game.Workspace.Part:GetPropertyChangedSignal("Anchored"):Connect(function()
    print("Anchored Property has been changed")
end)
