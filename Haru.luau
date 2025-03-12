local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Haru", "BloodTheme")


-- Main Tab
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("settings")

_G.FastAttack = false
_G.Bringmob = false
_G.AutoMeleeStats = false
_G.AutoDefenseStats = false  
_G.AutoSwordStats = false
_G.AutoGunStats = false
_G.AutoBloxFruitStats = false
local pullRange = 200
local TweenService = game:GetService("TweenService")
local PlayersService = game:GetService("Players")
local RunService = game:GetService("RunService")

Section:NewToggle("Fast Attack", "เปิด/ปิด Fast Attack", function(state)
    _G.FastAttack = state
end)

Section:NewToggle("bringmob", "เปิด/ปิด Bringmob", function(state)
    _G.Bringmob = state
end)

-- Stats Tab
local StatsTab = Window:NewTab("Stats")
local StatsSection = StatsTab:NewSection("Auto Stats")

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)



StatsSection:NewToggle("Melee", "Enable/Disable Auto Melee Stats", function(state)
    _G.AutoMeleeStats = state
    if state then
        task.spawn(function()
            while _G.AutoMeleeStats do
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",  
                    [3] = 1  
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                task.wait(0.1)
            end
        end)
    end
end)

StatsSection:NewToggle("Defense", "Enable/Disable Auto Defense Stats", function(state)
    _G.AutoDefenseStats = state
    if state then
        task.spawn(function()
            while _G.AutoDefenseStats do
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",  
                    [3] = 1  
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                task.wait(0.1)  
            end
        end)
    end
end)

StatsSection:NewToggle("Sword", "Enable/Disable Auto Sword Stats", function(state)
    _G.AutoSwordStats = state
    if state then
        task.spawn(function()
            while _G.AutoSwordStats do
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",  
                    [3] = 1  
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                task.wait(0.1)  
            end
        end)
    end
end)

StatsSection:NewToggle("Gun", "Enable/Disable Auto Gun Stats", function(state)
    _G.AutoGunStats = state
    if state then
        task.spawn(function()
            while _G.AutoGunStats do
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",  
                    [3] = 1  
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                task.wait(0.1)  
            end
        end)
    end
end)

StatsSection:NewToggle("Blox Fruit", "Enable/Disable Auto Blox Fruit Stats", function(state)
    _G.AutoBloxFruitStats = state
    if state then
        task.spawn(function()
            while _G.AutoBloxFruitStats do
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",  
                    [3] = 1  
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                task.wait(0.1)  
            end
        end)
    end
end)

local Tab = Window:NewTab("Shop")
local Section = Tab:NewSection("Melee")
Section:NewButton("BlackLeg", "BuylackLBeg", function()
local args = {
    [1] = "BuyBlackLeg"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)


Section:NewButton("Electro", "Electro", function()
local args = {
    [1] = "BuyElectro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)



Section:NewButton("Fishman Karate", "FishmanKarate", function()
local args = {
    [1] = "BuyFishmanKarate"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)

local Section = Tab:NewSection("Sword")
Section:NewButton("Soul Cane", "Soul Cane", function()
local args = {
    [1] = "BuyItem",
    [2] = "Soul Cane"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)


local Section = Tab:NewSection("Fruits")
Section:NewButton("Fruits", "Fruits", function()
local args = {
    [1] = "Cousin",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)

local Section = Tab:NewSection("Ability")
Section:NewButton("Geppo", "BuyGeppo", function()
local args = {
    [1] = "BuyHaki",
    [2] = "Geppo"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)

Section:NewButton("Haki", "BuyHaki", function()
local args = {
    [1] = "BuyHaki",
    [2] = "Buso"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)

Section:NewButton("Soru", "SoruHaki", function()
local args = {
    [1] = "BuyHaki",
    [2] = "Soru"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end)

local env = (getgenv or getrenv or getfenv)()
local rs = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local client = players.LocalPlayer
local modules = rs:WaitForChild("Modules")
local net = modules:WaitForChild("Net")
local charFolder = workspace:WaitForChild("Characters")
local enemyFolder = workspace:WaitForChild("Enemies")

local Module = {
    AttackCooldown = tick()
}
local CachedChars = {}

function Module.IsAlive(Char)
    if not Char then return false end
    if CachedChars[Char] then return CachedChars[Char].Health > 0 end
    local Hum = Char:FindFirstChildOfClass("Humanoid")
    CachedChars[Char] = Hum
    return Hum and Hum.Health > 0
end

local Settings = {
    ClickDelay = 0.01,
    AutoClick = true
}

Module.FastAttack = (function()
    if env._trash_attack then return env._trash_attack end

    local AttackModule = {
        NextAttack = 0,
        Distance = 55,
        attackMobs = true,
        attackPlayers = true
    }

    local RegisterAttack = net:WaitForChild("RE/RegisterAttack")
    local RegisterHit = net:WaitForChild("RE/RegisterHit")

    function AttackModule:AttackEnemy(EnemyHead, Table)
        if EnemyHead and client:DistanceFromCharacter(EnemyHead.Position) < self.Distance then
            if not self.FirstAttack then
                RegisterAttack:FireServer(Settings.ClickDelay or 0.125)
                self.FirstAttack = true
            end
            RegisterHit:FireServer(EnemyHead, Table or {})
        end
    end

    function AttackModule:AttackNearest()
        if not _G.FastAttack then return end
        local args = {nil, {}}
        for _, Enemy in enemyFolder:GetChildren() do
            if Enemy:FindFirstChild("HumanoidRootPart") and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < self.Distance then
                if not args[1] then
                    args[1] = Enemy:FindFirstChild("UpperTorso")
                else
                    table.insert(args[2], {Enemy, Enemy:FindFirstChild("UpperTorso")})
                end
            end
        end
        self:AttackEnemy(unpack(args))
        for _, Enemy in charFolder:GetChildren() do
            if Enemy ~= client.Character then
                self:AttackEnemy(Enemy:FindFirstChild("UpperTorso"))
            end
        end
        if not self.FirstAttack then task.wait(0.5) end
    end

    function AttackModule:BladeHits()
        self:AttackNearest()
        self.FirstAttack = false
    end

    task.spawn(function()
        while task.wait(Settings.ClickDelay or 0.125) do
            if not _G.FastAttack then continue end
            if (tick() - Module.AttackCooldown) < 0.483 then continue end
            if not Settings.AutoClick then continue end
            if not Module.IsAlive(client.Character) then continue end
            if not client.Character:FindFirstChildOfClass("Tool") then continue end
            AttackModule:BladeHits()
        end
    end)

    env._trash_attack = AttackModule
    return AttackModule
end)()

function Bringmob()
    if not _G.Bringmob then return end
    for _, v in pairs(enemyFolder:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            local distance = (v.HumanoidRootPart.Position - client.Character.HumanoidRootPart.Position).Magnitude
            if distance <= pullRange then
                v.HumanoidRootPart.CFrame = CFrame.new(client.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -12))
                if v:FindFirstChild("Humanoid") then
                    v.Humanoid.WalkSpeed = 0
                    v.Humanoid.JumpPower = 0
                    v.HumanoidRootPart.CanCollide = false
                 if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                end
            end
        end
    end
end

task.spawn(function()
    while task.wait(0.1) do
        Bringmob()
    end
end)

local Tab = Window:NewTab("Teleport ")
local Section = Tab:NewSection("Player")

local Players = {}
local selectedPlayer = nil
local moving = false
local currentTween = nil
local playerDropdown

-- ฟังก์ชันอัปเดตรายชื่อผู้เล่น
local function updatePlayers()
    table.clear(Players)
    for _, v in pairs(PlayersService:GetPlayers()) do
        if v ~= PlayersService.LocalPlayer then
            table.insert(Players, v.Name)
        end
    end

    -- อัปเดต Dropdown ใหม่
    if playerDropdown then
        playerDropdown:Refresh(Players)
    end
end
updatePlayers()

-- ดรอปดาวน์เลือกผู้เล่น (เก็บตัวแปรไว้เพื่อ Refresh)
playerDropdown = Section:NewDropdown("Select Player", "เลือกผู้เล่น", Players, function(playerName)
    selectedPlayer = PlayersService:FindFirstChild(playerName)
end)

local function stopMoving()
    moving = false
    if currentTween then
        currentTween:Cancel()
    end
end

local function moveToPlayer()
    moving = true
    while moving and selectedPlayer do
        local player = PlayersService.LocalPlayer
        if not player or not player.Character then stopMoving() return end
        
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
        local target = selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
        
        if not hrp or not target then stopMoving() return end
        
        local distance = (target.Position - hrp.Position).Magnitude
        local speed = 300  -- ความเร็วการเคลื่อนที่ (Studs/วินาที)
        local moveTime = distance / speed

        if currentTween then
            currentTween:Cancel()
        end

        local tweenInfo = TweenInfo.new(moveTime, Enum.EasingStyle.Linear)
        local tweenGoal = {CFrame = target.CFrame}
        currentTween = TweenService:Create(hrp, tweenInfo, tweenGoal)
        currentTween:Play()

        local startTime = tick()
        while tick() - startTime < moveTime do
            if not moving then
                stopMoving()
                return
            end
            task.wait(0.1)
        end
    end
end

Section:NewToggle("Teleport ", "Teleport to platyer", function(state)
    moving = state
    if state then
        moveToPlayer()
    else
        stopMoving()
    end
end)

-- ปุ่ม Refresh รายชื่อผู้เล่น
Section:NewButton("Refresh", "Refresh", function()
    updatePlayers()
end)

local Section = Tab:NewSection("Island")

local MapObjects = {}
local selectedObject = nil
local moving = false
local currentTween = nil
local objectDropdown

-- อัปเดตรายชื่อวัตถุใน Map
local function updateMapObjects()
    table.clear(MapObjects)
    if workspace:FindFirstChild("Map") then
        for _, obj in pairs(workspace.Map:GetChildren()) do
            if obj.Name ~= "TeleportSpawn" then -- ข้ามเกาะ TeleportSpawn
                table.insert(MapObjects, obj.Name)
            end
        end
    end

    -- รีเฟรช Dropdown
    if objectDropdown then
        objectDropdown:Refresh(MapObjects)
    end
end
updateMapObjects()

-- ดรอปดาวน์เลือกเป้าหมายในแมพ
objectDropdown = Section:NewDropdown("Island", "เลือกเกาะ", MapObjects, function(objName)
    selectedObject = workspace.Map:FindFirstChild(objName)
end)

-- หยุดการเคลื่อนที่
local function stopMoving()
    moving = false
    if currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end

-- ฟังก์ชันเคลื่อนที่ไปยังเกาะ
local function moveToObject()
    moving = true
    while moving and selectedObject do
        local player = PlayersService.LocalPlayer
        if not player or not player.Character then stopMoving() return end
        
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
        local target = selectedObject.PrimaryPart or selectedObject  -- ใช้ PrimaryPart ถ้ามี
        
        if not hrp or not target then stopMoving() return end

        -- ใช้ GetPivot() ถ้าไม่มี PrimaryPart
        local targetPosition = target:IsA("Model") and target:GetPivot().Position or target.Position
        
        -- 🔹 ล็อกค่าความสูงเป็น 150
        local finalPosition = Vector3.new(targetPosition.X, 145, targetPosition.Z)

        local distance = (finalPosition - hrp.Position).Magnitude
        local speed = 330  -- ความเร็วเคลื่อนที่ (Studs/วินาที)
        local moveTime = distance / speed

        -- ยกเลิก Tween เดิมก่อนเริ่ม Tween ใหม่
        if currentTween then
            currentTween:Cancel()
        end

        local tweenInfo = TweenInfo.new(moveTime, Enum.EasingStyle.Linear)
        local tweenGoal = {CFrame = CFrame.new(finalPosition)}
        currentTween = TweenService:Create(hrp, tweenInfo, tweenGoal)
        currentTween:Play()

        -- รอจนกว่าการเคลื่อนที่จะเสร็จ
        local startTime = tick()
        while tick() - startTime < moveTime do
            if not moving then
                stopMoving()
                return
            end

            -- 🔹 หยุดเมื่อถึงเกาะ (เช็คระยะห่าง)
            if (hrp.Position - finalPosition).Magnitude < 5 then
                stopMoving()
                return
            end

            task.wait(0.1)
        end

        -- 🔹 หยุดเมื่อไปถึงเป้าหมาย
        stopMoving()
    end
end

-- Toggle สำหรับเปิด/ปิดการเคลื่อนที่
Section:NewToggle("Teleport", "เปิด/ปิด Teleport", function(state)
    moving = state
    if state then
        moveToObject()
    else
        stopMoving()
    end
end)


local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

local Section = Tab:NewSection("Chests")

local moving = false
local currentTween = nil
local fixedY = 141 -- 🔥 ล็อกเฉพาะตอนข้ามไปเกาะ

local function stopMoving()
    moving = false
    if currentTween then
        currentTween:Cancel()
    end
end

-- หาตำแหน่งของเกาะทั้งหมดที่อยู่ใน workspace.Map ยกเว้น "TeleportSpawn"
local function getIslands()
    local islands = {}
    if Workspace:FindFirstChild("Map") then
        for _, island in pairs(Workspace.Map:GetChildren()) do
            if island:IsA("Model") and island.Name ~= "TeleportSpawn" then
                table.insert(islands, island)
            end
        end
    end
    return islands
end

-- หากล่องที่ใกล้ที่สุดใน workspace.ChestModels
local function getNearestChest()
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end

    local nearestChest = nil
    local shortestDistance = math.huge

    if Workspace:FindFirstChild("ChestModels") then
        for _, chest in pairs(Workspace.ChestModels:GetChildren()) do
            if chest:IsA("Model") then
                local target = chest.PrimaryPart or chest:FindFirstChildWhichIsA("BasePart")
                if target then
                    local distance = (target.Position - hrp.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        nearestChest = target
                    end
                end
            end
        end
    end

    return nearestChest
end

-- เคลื่อนที่ไปยังตำแหน่งที่กำหนด (ล็อก Y = 141 เฉพาะตอนข้ามเกาะ)
local function moveToPosition(targetPosition, lockY)
    moving = true
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then stopMoving() return end

    local finalPosition = lockY and Vector3.new(targetPosition.X, fixedY, targetPosition.Z) or targetPosition
    local distance = (finalPosition - hrp.Position).Magnitude
    local speed = 330
    local moveTime = distance / speed 

    local tweenInfo = TweenInfo.new(moveTime, Enum.EasingStyle.Linear)
    local tweenGoal = {CFrame = CFrame.new(finalPosition)}

    if currentTween then
        currentTween:Cancel()
    end

    currentTween = TweenService:Create(hrp, tweenInfo, tweenGoal)
    currentTween:Play()

    local startTime = tick()
    while tick() - startTime < moveTime do
        if not moving then stopMoving() return end
        task.wait(0.1)
    end
end

-- ฟังก์ชันหลัก: เคลื่อนที่ไปแต่ละเกาะและเก็บกล่อง
local function autoCollectChests()
    moving = true
    local islands = getIslands()

    if #islands == 0 then
        print("❌ ไม่พบเกาะใด ๆ!")
        stopMoving()
        return
    end

    print("🌍 พบ", #islands, "เกาะ (ยกเว้น TeleportSpawn) กำลังเคลื่อนที่ไปแต่ละเกาะ...")

    for _, island in ipairs(islands) do
        if not moving then break end

        local islandPosition = island.PrimaryPart and island.PrimaryPart.Position or island:GetPivot().Position
        print("🚢 เคลื่อนที่ไปยังเกาะ:", island.Name)
        
        -- 🔥 ล็อก Y เฉพาะตอนไปเกาะ
        moveToPosition(islandPosition, true)

        -- รอให้ไปถึงเกาะก่อนหา Chest
        task.wait(1)

        -- ไล่เก็บกล่องทั้งหมดในเกาะนี้
        while moving do
            local nearestChest = getNearestChest()
            if not nearestChest then
                print("✅ กล่องหมดแล้วในเกาะ:", island.Name)
                break
            end
            print("📦 พบกล่อง! กำลังเคลื่อนที่ไปเก็บ...")
            
            -- ❌ ไม่ล็อก Y ตอนเก็บกล่อง
            moveToPosition(nearestChest.Position, false)
            task.wait(0.5)
        end
    end

    print("🎉 เก็บกล่องครบทุกเกาะแล้ว!")
    stopMoving()
end

Section:NewToggle("Auto Chests", "เปิด/ปิดการเก็บกล่องอัตโนมัติ", function(state)
    moving = state
    if state then
        autoCollectChests()
    else
        stopMoving()
    end
end)
