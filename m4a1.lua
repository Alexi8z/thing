game.ReplicatedStorage.Viewmodels["v_M4A1"]:Destroy()
		local newgun = game.ReplicatedStorage.Viewmodels.OldM4A1BACKUP:Clone()
		newgun.Name = "v_M4A1"
		newgun.Parent = game.ReplicatedStorage.Viewmodels
	else
		game.ReplicatedStorage.Viewmodels["v_M4A1"]:Destroy()
		local newgun = game.ReplicatedStorage.Viewmodels.M4A1BACKUP:Clone()
		newgun.Name = "v_M4A1"
		newgun.Parent = game.ReplicatedStorage.Viewmodels
	end
end)

local t = VisualTab:Toggle('Halloween C4 Model', {flag = "toggle"}, function(enabled)
	if enabled == true then
		game.ReplicatedStorage.Viewmodels["v_C4"]:Destroy()
		local newgun = game.ReplicatedStorage.Viewmodels.HalloweenC4BACKUP:Clone()
		newgun.Name = "v_C4"
		newgun.Parent = game.ReplicatedStorage.Viewmodels
	else
		game.ReplicatedStorage.Viewmodels["v_C4"]:Destroy()
		local newgun = game.ReplicatedStorage.Viewmodels.C4BACKUP:Clone()
		newgun.Name = "v_C4"
		newgun.Parent = game.ReplicatedStorage.Viewmodels
	end
end)  

local oldm4a1backup = game.ReplicatedStorage.Viewmodels["v_oldM4A1-S"]:Clone()
oldm4a1backup.Parent = game.ReplicatedStorage.Viewmodels
oldm4a1backup.Name = "OldM4A1BACKUP"

oldm4a1backup.Silencer.Transparency = 1
local fix = oldm4a1backup.Silencer:Clone()
fix.Parent = oldm4a1backup
fix.Name = "Silencer2"
fix.Transparency = 0

local m4a1backup = game.ReplicatedStorage.Viewmodels["v_M4A1"]:Clone()
m4a1backup.Parent = game.ReplicatedStorage.Viewmodels
m4a1backup.Name = "M4A1BACKUP"
