-- Script --

local plr = game:service'Players'.LocalPlayer
local highlights = Instance.new('Folder', game:service'CoreGui')

-- /// -- Zombies -- /// --
local function ZombieHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(155, 0, 255)
    highlight.FillTransparency = 1.0
    
    highlight.OutlineColor = Color3.fromRGB(155, 0, 255)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateZombie(object)
        if object:IsA'Model' and object.Parent.Name == 'Zombies' then
            ZombieHighlight(object)
        end
    end



-- /// -- Mystery Box -- /// --
local function MysteryBoxHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(255, 205, 100)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(255, 205, 100)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateMysteryBox(object)
        if object.Name == 'MysteryBox' then
            MysteryBoxHighlight(object)
        end
    end



-- /// -- Double Tap -- /// --
local function DoubleTapHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(255, 150, 0)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(255, 150, 0)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateDoubleTap(object)
        if object.Name == 'Double Tap Machine' then
            DoubleTapHighlight(object)
        end
    end



-- /// -- Speed Cola -- /// --
local function SpeedColaHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(0, 199, 0)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(0, 199, 0)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateSpeedCola(object)
        if object.Name == 'Speed Cola Machine' then
            SpeedColaHighlight(object)
        end
    end



-- /// -- Quick Revive -- /// --
local function QuickReviveHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(0, 200, 255)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(0, 200, 255)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateQuickRevive(object)
        if object.Name == 'Quick Revive Machine' then
            QuickReviveHighlight(object)
        end
    end



-- /// -- Mule Kick -- /// --
local function MuleKickHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(155, 255, 0)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(155, 255, 0)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateMuleKick(object)
        if object.Name == 'Mule Kick Machine' then
            MuleKickHighlight(object)
        end
    end



-- /// -- Juggernog -- /// --
local function JuggernogHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(255, 99, 0)
    highlight.FillTransparency = 0.75
    
    highlight.OutlineColor = Color3.fromRGB(255, 99, 0)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end

    local function LocateJuggernog(object)
        if object.Name == 'Juggernog Machine' then
            JuggernogHighlight(object)
        end
    end



-- /// -- Parts Locations -- /// --
local function PartsHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    
    highlight.FillColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.25
    
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0.0
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
end


    local function HighlightParts(object)
        if object.Parent.Name == '_Parts' then
            PartsHighlight(object)
        end
    end



-- /// -- PowerUp Locations -- /// --
local function PowerUpHighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

    highlight.FillColor = Color3.fromRGB(155, 155, 55)
    highlight.FillTransparency = 0.25

    highlight.OutlineColor = Color3.fromRGB(155, 155, 55)
    highlight.OutlineTransparency = 0.0

    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)

    return highlight
end

    local function LocatePowerUp(object)
        if object.Parent.Name == '_Powerups' then
            PowerUpHighlight(object)
        end
    end
    
    
-- /// -- Remove Doors -- /// --
local function RemoveDoors(object)
    if object.Name == '_Doors' then
        object:Destroy()
    end
end

print"Loading finished"
--/////////////////////////////////////////////////////

for i,v in pairs(workspace:GetDescendants()) do
    RemoveDoors(v)
    LocateDoubleTap(v)
    LocateSpeedCola(v)
    LocateQuickRevive(v)
    LocateMuleKick(v)
    LocateJuggernog(v)
end

workspace.DescendantAdded:Connect(function(v)
    RemoveDoors(v)
    LocateDoubleTap(v)
    LocateSpeedCola(v)
    LocateQuickRevive(v)
    LocateMuleKick(v)
    LocateJuggernog(v)
end)

for i,q in pairs(workspace:GetDescendants()) do
    LocateMysteryBox(q)
    LocatePowerUp(q)
    HighlightParts(q)
end

workspace.DescendantAdded:Connect(function(q)
    LocateMysteryBox(q)
    LocatePowerUp(q)
    HighlightParts(q)
end)

    -- LocateZombie(v)
