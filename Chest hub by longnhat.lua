local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("UICorner")
local d = Instance.new("Frame")
local e = Instance.new("ImageButton")
local f = Instance.new("ImageLabel")
local g = Instance.new("ImageLabel")
local h = Instance.new("TextButton")
local i = Instance.new("TextButton")
local j = Instance.new("TextLabel")
local k = Instance.new("TextLabel")
local l = Instance.new("TextLabel")
local l = true
game.Players.LocalPlayer.Idled:connect(
    function()
        while wait(3) do
            if l then
                game.VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                game.VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        end
    end
)
godsChalicSniper = false
repeat
    task.wait(4)
until game:IsLoaded()
local l = game.PlaceId
local m = {}
local n = ""
local o = os.date("!*t").hour
local p = false
local p =
    pcall(
    function()
        m = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
    end
)
if not p then
    table.insert(m, o)
    writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(m))
end
function TPReturner()
    local a
    if n == "" then
        a =
            game.HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. l .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    else
        a =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. l .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. n
            )
        )
    end
    local b = ""
    if a.nextPageCursor and a.nextPageCursor ~= "null" and a.nextPageCursor ~= nil then
        n = a.nextPageCursor
    end
    local c = 0
    for a, a in pairs(a.data) do
        local d = true
        b = tostring(a.id)
        if tonumber(a.maxPlayers) > tonumber(a.playing) then
            for a, a in pairs(m) do
                if c ~= 0 then
                    if b == tostring(a) then
                        d = false
                    end
                else
                    if tonumber(o) ~= tonumber(a) then
                        local a =
                            pcall(
                            function()
                                delfile("NotSameServers.json")
                                m = {}
                                table.insert(m, o)
                            end
                        )
                    end
                end
                c = c + 1
            end
            if d == true then
                table.insert(m, b)
                wait()
                pcall(
                    function()
                        writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(m))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(l, b, game.Players.LocalPlayer)
                    end
                )
                wait(4)
            end
        end
    end
end
function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if n ~= "" then
                    TPReturner()
                end
            end
        )
    end
end
local l = 0.5
task.spawn(
    function()
        while task.wait(l) do
            pcall(
                function()
                    for a, a in pairs(game.CoreGui:GetDescendants()) do
                        pcall(
                            function()
                                if string.find(a.Name, "ErrorMessage") then
                                    if string.find(a.Text, "Security kick") then
                                        l = 1e9
                                        Teleport()
                                    end
                                end
                            end
                        )
                    end
                end
            )
        end
    end
)
local l = Instance.new("ScreenGui")
local m = Instance.new("ImageButton")
l.Parent = game.CoreGui
l.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_G.Primary = Color3.fromRGB(207, 87, 201)
m.Parent = l
m.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
m.Size = UDim2.new(0, 50, 0, 50)
m.BackgroundColor3 = _G.Primary
m.ImageColor3 = Color3.fromRGB(255, 255, 255)
m.ImageTransparency = .1
m.Draggable = true
m.Active = true
m.Selectable = true
m.BackgroundTransparency = .1
m.Image = "rbxassetid://"
m.Visible = false
local l = Instance.new("UICorner")
l.Name = "MCNR"
l.Parent = m
l.CornerRadius = UDim.new(0, 5)
m.MouseButton1Down:connect(
    function()
        m:TweenSize(UDim2.new(0, 40, 0, 40), "Out", "Quad", 0.2, true)
        wait(0.1)
        m:TweenSize(UDim2.new(0, 50, 0, 50), "Out", "Quad", 0.2, true)
        game.CoreGui:FindFirstChild("ScreenGui_Chest").Enabled =
            not game.CoreGui:FindFirstChild("ScreenGui_Chest").Enabled
        m.Visible = false
    end
)
do
    if game:GetService("CoreGui"):FindFirstChild("ScreenGui_Chest") then
        game:GetService("CoreGui").ScreenGui_Chest:Destroy()
        game:GetService("CoreGui").ScreenGui:Destroy()
    end
end
a.Name = "ScreenGui_Chest"
a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
a.Parent = game.CoreGui
b.Name = "Frame_Chest"
b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(207, 87, 201)
b.BackgroundTransparency = 0.100
b.BorderColor3 = Color3.fromRGB(207, 87, 201)
b.BorderSizePixel = 0
b.Draggable = true
b.Active = true
b.Selectable = true
b.Position = UDim2.new(0.297761381, 0, 0.278439432, 0)
b.Size = UDim2.new(0, 281, 0, 164)
c.Parent = b
d.Name = "Frame1_Chest"
d.Parent = b
d.BackgroundColor3 = Color3.fromRGB(232, 125, 220)
d.BorderColor3 = Color3.fromRGB(207, 87, 201)
d.BorderSizePixel = 0
d.Position = UDim2.new(0.0246521216, 0, 0.0482814126, 0)
d.Size = UDim2.new(0, 266, 0, 147)
e.Name = "Miminze"
e.Parent = b
e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
e.BackgroundTransparency = 1.000
e.BorderColor3 = Color3.fromRGB(207, 87, 201)
e.BorderSizePixel = 0
e.Position = UDim2.new(0.87502408, 0, 0.0182926822, 0)
e.Size = UDim2.new(0, 19, 0, 26)
e.Image = "http://www.roblox.com/asset/?id="
e.MouseButton1Down:connect(
    function()
        game.CoreGui:FindFirstChild("ScreenGui_Chest").Enabled =
            not game.CoreGui:FindFirstChild("ScreenGui_Chest").Enabled
        m.Visible = true
    end
)
f.Name = "Logo"
f.Parent = b
f.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
f.BackgroundTransparency = 1.000
f.BorderColor3 = Color3.fromRGB(207, 87, 201)
f.BorderSizePixel = 0
f.Position = UDim2.new(0.0246521216, 0, 0.0482814126, 0)
f.Size = UDim2.new(0, 23, 0, 18)
f.Image = "rbxassetid://"
g.Name = "Avatra"
g.Parent = b
g.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
g.BackgroundTransparency = 1.000
g.BorderColor3 = Color3.fromRGB(207, 87, 201)
g.BorderSizePixel = 0
g.Position = UDim2.new(0.0462633446, 0, 0.176829264, 0)
g.Size = UDim2.new(0, 90, 0, 100)
g.Image =
    game.Players:GetUserThumbnailAsync(
    game.Players.LocalPlayer.UserId,
    Enum.ThumbnailType.AvatarThumbnail,
    Enum.ThumbnailSize.Size420x420
)
h.Name = "FarmChestButton"
h.Parent = b
h.BackgroundColor3 = Color3.fromRGB(232, 125, 220)
h.BackgroundTransparency = 0.100
h.BorderColor3 = Color3.fromRGB(207, 87, 201)
h.BorderSizePixel = 0
h.Position = UDim2.new(0.478776932, 0, 0.691130638, 0)
h.Size = UDim2.new(0, 121, 0, 28)
h.Font = Enum.Font.SourceSansBold
h.Text = "Farm Chest"
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.TextSize = 14.000
h.MouseButton1Down:connect(
    function(a)
        if a then
            h.Text = "Farm Chest : ON"
            AllowRunService = true
            highChestOnly = true
        else
            h.Text = "Farm Chest : OFF"
            AllowRunService = false
            highChestOnly = false
        end
    end
)
task.spawn(
    function()
        while true and task.wait(.5) do
            if AllowRunService == true then
                local a = "SetTeam"
                local b = "Marines"
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a, b)
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            if AllowRunService == true then
                if highChestOnly == false then
                    local a = game.Players.LocalPlayer:FindFirstChild("Character")
                    if not game.Players.LocalPlayer.Character then
                    else
                        local a = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG", true)
                        if a then
                            a:Destroy()
                        end
                        local a = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if a then
                            local a =
                                game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or
                                game.Workspace:FindFirstChild("Chest2") or
                                game.Workspace:FindFirstChild("Chest1") or
                                game.Workspace:FindFirstChild("Chest")
                            if a then
                                game.Players.LocalPlayer.Character:PivotTo(a:GetPivot())
                                firesignal(a.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart)
                            else
                                Teleport()
                                break
                            end
                        end
                    end
                elseif highChestOnly == true then
                    local a = game.Players.LocalPlayer:FindFirstChild("Character")
                    if not game.Players.LocalPlayer.Character then
                    else
                        local a = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG", true)
                        if a then
                            a:Destroy()
                        end
                        local a = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if a then
                            local a =
                                game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or
                                game.Workspace:FindFirstChild("Chest2")
                            if a then
                                game.Players.LocalPlayer.Character:PivotTo(a:GetPivot())
                                firesignal(a.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart)
                            else
                                Teleport()
                                break
                            end
                        end
                    end
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.spawn(
                function()
                    if godsChalicSniper == true then
                        if stuff then
                            AllowRunService = false
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait(15) do
            if AllowRunService then
                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end
)
i.Name = "Auto farm chest"
i.Parent = b
i.BackgroundColor3 = Color3.fromRGB(232, 125, 220)
i.BackgroundTransparency = 0.100
i.BorderColor3 = Color3.fromRGB(207, 87, 201)
i.BorderSizePixel = 0
i.Position = UDim2.new(0.4775801, 0, 0.431707233, 0)
i.Size = UDim2.new(0, 121, 0, 28)
i.Font = Enum.Font.SourceSansBold
i.Text = "Auto farm chest"
i.TextColor3 = Color3.fromRGB(255, 255, 255)
i.TextSize = 14.000
i.MouseButton1Down:connect(
    function()
        setclipboard("")
        i.Text = ""
        wait(.25)
        i.Text = ""
    end
)
j.Name = "NameHub"
j.Parent = b
j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
j.BackgroundTransparency = 1.000
j.BorderColor3 = Color3.fromRGB(207, 87, 201)
j.BorderSizePixel = 0
j.Position = UDim2.new(0.0790036023, 0, -0.00593120279, 0)
j.Size = UDim2.new(0, 65, 0, 35)
j.Font = Enum.Font.SourceSansBold
j.Text = " AnBaToCom Hub"
j.TextColor3 = Color3.fromRGB(255, 255, 255)
j.TextSize = 14.000
k.Name = "FPS"
k.Parent = b
k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
k.BackgroundTransparency = 1.000
k.BorderColor3 = Color3.fromRGB(207, 87, 201)
k.BorderSizePixel = 0
k.Position = UDim2.new(0.392720729, 0, 0.116020016, 0)
k.Size = UDim2.new(0, 65, 0, 27)
k.Font = Enum.Font.SourceSansBold
k.Text = "FPS: "
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.TextSize = 14.000
function UpdateFPS()
    local a = workspace:GetRealPhysicsFPS()
    k.Text = "FPS: " .. a
end
spawn(
    function()
        while true do
            wait(.1)
            UpdateFPS()
        end
    end
)
