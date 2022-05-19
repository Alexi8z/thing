local function GodMode()
game.Players.LocalPlayer.Character:WaitForChild("server_PickupSystem").RemoteEvent:FireServer(["OriginalDamage"] = 0/0, ["Softened"] = false,     ["Broken"] = false,     ["Model"] = game:GetService("Workspace").GameObjects.Physical.Map.Ground["Master Bedroom"], ["Range"] = 21.323659420013428, ["Damage"] = 0/0)
end

GodMode() -- dont know why i did this but if you reset then it will fire the remote event again so you dont have to execute it lol

game.Players.LocalPlayer.CharacterAdded:Connect(GodMode)
