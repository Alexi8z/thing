local Services = setmetatable({
		LocalPlayer = game:GetService("Players").LocalPlayer,
	 },{
		__index = function(self, idx)
			if game:GetService(idx) then
				return game:GetService(idx)
			elseif rawget(self, idx) then
				return rawget(self, idx)
			end
		end
	 })
	 
	 for i, v in pairs(Services.LocalPlayer.PlayerGui.GUI.Scoreboard:GetChildren()) do 
		if v.Name == "CT" or v.Name == "T" then 
			for k, x in pairs(v:GetChildren()) do 
				if x:IsA("Frame") and x:FindFirstChild("player") then 
					local Tag = x.player 
					local Player = Services.Players:FindFirstChild(Tag.Text) 
					Services.RunService.RenderStepped:Connect(function() 
						if Player and Player.OsPlatform and Player.OsPlatform:find("|") then 
							Tag.Text = Player.OsPlatform:sub(2, Player.OsPlatform:len()).." "..Player.Name 
						end
					end)
				end
			end
			v.ChildAdded:Connect(function(child) 
				if child:IsA("Frame") and child:FindFirstChild("player") then 
					local Tag = child.player 
					local Player  
					repeat wait() 
						Player = Services.Players:FindFirstChild(Tag.Text) 
					until Player ~= "PLAYER" 
					Services.RunService.RenderStepped:Connect(function() 
						if Player and Player.OsPlatform and Player.OsPlatform:find("|") then 
							Tag.Text = Player.OsPlatform:sub(2, Player.OsPlatform:len()).." "..Player.Name
						end
					end)
				end
			end)
		end
	 end
	 
	 local CurrentLetter = 0 
	 local Clantag = "DriftWare"
	 
	 while wait(0.3) do 
		Services.LocalPlayer.OsPlatform = "|"..Clantag:sub(0, CurrentLetter).." " 
		if CurrentLetter == Clantag:len() then 
			wait(1.3) 
			CurrentLetter = 0 
		end
		CurrentLetter = CurrentLetter + 1 
	 end
end)
