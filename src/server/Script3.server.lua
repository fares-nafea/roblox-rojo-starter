local children = game.Workspace:WaitForChild("Folder"):GetChildren()


for index, value in children do
    print(value.Name)
    value.Color = Color3.fromRGB(255,  0, 0)
    task.wait(1)
end