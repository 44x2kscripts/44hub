local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "44hub (universial) " .. Fluent.Version,
    SubTitle = "keyless, free",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
}



    Tabs.Home:AddButton({
        Title = "load infinite yield",
        Description = " ",
        Callback = function()
            Window:Dialog({
                Title = "Load IY",
                Content = "This is realness",
                Buttons = {
                    {
                        Title = "Load",
                        Callback = function()
                           loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
        Tabs.Home:AddButton({
        Title = "load og 44hub",
        Description = " ",
        Callback = function()
            Window:Dialog({
                Title = "Load OG 44hub",
                Content = "This is realness",
                Buttons = {
                    {
                        Title = "Load",
                        Callback = function()
                           loadstring(game:HttpGet("https://pastebin.com/raw/6Z1W7ygT"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

        local Slider = Tabs.Home:AddSlider("Slider", {
        Title = "walkspeed",
        Description = "changes walkspeed",
        Default = 16,
        Min = 16,
        Max = 250,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character:FindFirstChild'Humanoid'.WalkSpeed = Value
        end
    })

            local Slider = Tabs.Home:AddSlider("Slider", {
        Title = "jumppower",
        Description = "changes jumppower",
        Default = 50,
        Min = 50,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character:FindFirstChild'Humanoid'.JumpPower = Value
        end
    })
