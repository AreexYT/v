-- Highlight Model --

local highlights = Instance.new('Folder', game:service'CoreGui')

-- /// -- RED -- /// --
local function REDHighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

   highlight.FillColor = Color3.fromRGB(255, 0, 0)
   highlight.FillTransparency = 0.75
   
   highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
   highlight.OutlineTransparency = 0.0
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end

local function LocateRED(object)
   if object:IsA'Model' and object.Name == 'SCP049' or object:IsA'Model' and object.Name == 'SCP096' or object:IsA'Model' and object.Name == 'SCP173' or object:IsA'Model' and object.Name == 'SCP966' or object:IsA'Model' and object.Name == 'SCP457' or object:IsA'Model' and object.Name == 'SCP106' or object:IsA'Model' and object.Name == 'SCP939' or object:IsA'Model' and object.Name == 'SCP860' or object:IsA'Model' and object.Name == 'ForestMonster' or object:IsA'Model' and object.Name == 'Zombie' then
       REDHighlight(object)
   end
end

for i,v in pairs(workspace:GetDescendants()) do
    LocateRED(v)
end

workspace.DescendantAdded:Connect(function(v) --
    LocateRED(v)
end)
