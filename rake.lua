-- Highlight Model --

local highlights = Instance.new('Folder', game:service'CoreGui')

-- /// -- Red -- /// --
local function RedHighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

   highlight.FillColor = Color3.fromRGB(255, 0, 0)
   highlight.FillTransparency = 1
   
   highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
   highlight.OutlineTransparency = 0.0
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee.Parent then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end

local function YellowHighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

   highlight.FillColor = Color3.fromRGB(255, 255, 0)
   highlight.FillTransparency = 1
   
   highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
   highlight.OutlineTransparency = 0.0
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee.Parent then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end



local function LocateRed(object) -- Locates that scary bitch
   if object.Name == 'Rake' then
       RedHighlight(object)
   end
end

local function LocateYellow(object) -- Finds those scraps
   if object.Name == 'Scrap1' or object.Name == 'Scrap2' or object.Name == 'Scrap3' or object.Name == 'Scrap4' or  object.Name == 'Scrap5' or  object.Name == 'Scrap6' or  object.Name == 'Scrap7' then
       YellowHighlight(object)
   end
end



for i,v in pairs(workspace:GetDescendants()) do
    LocateRed(v)
    LocateYellow(v)
end

workspace.DescendantAdded:Connect(function(v) --
    LocateRed(v)
    LocateYellow(v)
end)
