local Part = Instance.new("Part")
Part.Transparency = 0.5
Part.Anchored = true
Part.Position = Vector3.new(0,30, 0)
Part.Name = "MyPart"
Part.Parent = game.Workspace


local Murderers = Instance.new("Team")
Murderers.Name = "Murderers"
Murderers.Parent = game.Teams

local Sheriffs = Instance.new("Team")
Sheriffs.Name = "Sheriffs"
Sheriffs.Parent = game.Teams