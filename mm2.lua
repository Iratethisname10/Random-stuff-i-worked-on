local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = ". Vo's stuff | mm2",
    LoadingTitle = ". Vo's stuff | mm2",
    LoadingSubtitle = "hi :D",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "mm2",
       FileName = "mm2 configs"
    },
})

local mainTab = Window:CreateTab("Main", 4483362458)
local mainSection = mainTab:CreateSection("Murder Mystery 2")

local vars = {
    SpamDrop = false,
    DropDelay = 0,
    spamGetGun = false,
    getgundelay = 0
}

local SpamDropGuns = mainTab:CreateToggle({
    Name = "spam Drop Guns",
    CurrentValue = false,
    Flag = "spamguns",
    Callback = function(v)
        vars.SpamDrop = v
        repeat
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    v.Parent = game.Players.LocalPlayer.Character
                end
            end
            task.wait()
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Darkbringer" then
                    v.Parent = workspace
                end
            end
            wait(vars.DropDelay)
        until vars.SpamDrop == false
    end,
})

local droppydelay = mainTab:CreateSlider({
    Name = "Drop Delay",
    Range = {0, 5},
    Increment = 0.5,
    CurrentValue = vars.DropDelay,
    Flag = "dro-pdar",
    Callback = function(v)
        vars.DropDelay = v
    end,
})

local SpamDropGuns = mainTab:CreateToggle({
    Name = "Auto Get Fake Gun",
    CurrentValue = false,
    Flag = "spamguns",
    Callback = function(v)
        vars.spamGetGun = v
        repeat
            game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(true)
            wait(vars.getgundelay)
        until vars.spamGetGun == false
    end,
})

local getdelay = mainTab:CreateSlider({
    Name = "Get Gun Delay",
    Range = {0, 5},
    Increment = 0.5,
    CurrentValue = vars.getgundelay,
    Flag = "dro-pdar2",
    Callback = function(v)
        vars.getgundelay = v
    end,
})

local miscsex = mainTab:CreateSection("Other stuff")

local Button = mainTab:CreateButton({
    Name = "Delete Ui",
    Callback = function()
        Rayfield:Destroy()
    end,
})