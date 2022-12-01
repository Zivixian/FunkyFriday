if game.PlaceId == 6447798030 then

--Anti AFk
print("Anti Afk On")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--Normal Script Below
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
 
local Window = OrionLib:MakeWindow({Name = "Funky Friday Essentials"})
 
local Tab = Window:MakeTab({
	Name = "Main Scripts",
	Icon = "rbxassetid://7072718412",
	PremiumOnly = false
})
 
local Tab2 = Window:MakeTab({
	Name = "Other Scripts",
	Icon = "rbxassetid://6031225819",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://7072721682",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://7072717857",
	PremiumOnly = false
})
Tab4:AddLabel("Zivixian: Script Editor (2375#2375)")
Tab4:AddLabel("ENZ0 & NetBox: Original Developers (ENZ0#7514, troy#0666)")
Tab4:AddLabel("Wally: Wally's Autoplayer Script Developer")

Tab3:AddButton({
	Name = "Destroy GUI",
	Callback = function()
        game:GetService("CoreGui").Orion:Destroy()
  	end    
})

Tab:AddLabel("Autoplayer needed for farms, 2 accounts for winstreak farms")

Tab:AddButton({
	Name = "Points Farm",
	Callback = function()
       	loadstring(game:HttpGet("https://raw.githubusercontent.com/Zivixian/FunkyFridayFeatures/main/PointFarm.lua",true))()
  	end    
})

Tab:AddButton({
	Name = "Winstreak Farm (Left)",
	Callback = function()
       	loadstring(game:HttpGet("https://raw.githubusercontent.com/Zivixian/FunkyFridayFeatures/main/WinstreakLeft.lua",true))()
  	end    
})

Tab:AddButton({
	Name = "Winstreak Farm (Right)",
	Callback = function()
       	loadstring(game:HttpGet("https://raw.githubusercontent.com/Zivixian/FunkyFridayFeatures/main/WinstreakRight.lua",true))()
  	end    
})

Tab2:AddButton({
	Name = "Autoplayer (Wally's)",
	Callback = function()
       	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
  	end    
})

Tab2:AddButton({
	Name = "Redeem All Codes",
	Callback = function()
       	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Zivixian/FunkyFridayFeatures/main/AllCodes.lua", true))()
  	end    
})

Tab2:AddButton({
	Name = "Extra Free Stuff (Rejoin before and after clicking)",
	Callback = function()
       	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Zivixian/FunkyFridayFeatures/main/ExtraStuff.lua", true))()
  	end    
})

end
