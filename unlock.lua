local script = require(workspace.Lib.Items.TGSItems)
local levelScript = require(workspace.Lib.Spotify.Spotify)
local newString;
local suc, err = pcall(function()

spawn(function()
    levelScript.GetPlayerLevel = function()
        return 69420
    end

        for _1, _2 in next, workspace.Lib.Items.ItemSettings:GetChildren() do
            for _3, _4 in next, _2:GetDescendants() do
                newString = string.split(tostring(_4), '_')[2]
                script.ChangeItemAmount(game.Players.LocalPlayer, tostring(_2), newString, 1)
            end
        end
    end)

    if not suc then
        print(err)
    end
end)
