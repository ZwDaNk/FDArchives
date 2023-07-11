local plr = game.Players.LocalPlayer
local antiban = false
local banned = {}

local killToolSource = [[z = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack) 
z.Name = "Kill tool"
function onButton1Down(mouse)
	local hit = mouse.Target
	if (hit == nil) then return end
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			hit.Parent:BreakJoints()
		end
	end
end
function onSelected(mouse)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

z.Selected:connect(onSelected)]]

local tpCode = [[for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == _G.PlrName then
print'cant tele owner'
else
game:GetService('TeleportService'):Teleport(_G.PlaceId, v.Character)
end
end
]]

function placeTp(placeId)
	_G.PlaceId = placeId
	_G.PlrName = plr.Name
	loadKohlsCode(tpCode)
end

function loadCode(code)
coroutine.resume(coroutine.create(function()
ypcall(loadstring(code))
end))
end

function loadKohlsCode(code)
game.Workspace["Kohl's Admin Commands V2"].ScriptBase.Code.Value = code
game.Workspace["Kohl's Admin Commands V2"].ScriptBase.Disabled = true
game.Workspace["Kohl's Admin Commands V2"].ScriptBase.Disabled = false
end

function findPlayer(name)
    for _, player in pairs(game.Players:GetPlayers()) do
        if string.sub(player.Name,1,string.len(name)):lower() == string.sub(name,1,string.len(name)):lower() then
            return player
		else
			print'nop not it'
        end
    end
end

function findPlayer1(name)
    for _, player in pairs(game.Players:GetPlayers()) do
        if string.sub(player.Name,1,string.len(name)):lower() == string.sub(name,1,string.len(name)):lower() then
            return player.Name
		else
			print'nop not it'
        end
    end
end

function checkBan(pl)
	for i,v in pairs(banned) do
		if v == pl then
			return true
		else
			return false
		end
	end
end

function hOrM(t,m)
	j=Instance.new(t,workspace)
	j.Text = m
	wait(5)
	j:remove()
end

game.Players.PlayerAdded:connect(function(player)
	if checkBan(player.Name) then
		player:Destroy()
		hOrM("Hint","Banned player, "..player.Name.." tried to enter")
	else
		hOrM("Hint",player.Name.." entered.")
	end
end)

plr.Chatted:connect(function(msg)
if string.sub(msg,1,4) == "lag/" then
_G.lagname = findPlayer1(string.sub(msg,5))
lagscript = [[repeat
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
Instance.new("HopperBin",game.Players[_G.lagname].Backpack)
wait(1/1000000000000000000)
until not game.Players[_G.lagname]
]]
loadCode(lagscript)
end
if string.sub(msg,1,9) == "shutdown/" then
pcall(function()plr.Character=workspace end)
plr:Destroy()
end
if string.sub(msg,1,5) == "kick/" then
	p = findPlayer(string.sub(msg,6))
	if p then
		p:Destroy()
	end
end
if string.sub(msg,1,4) == "ban/" then
	p = findPlayer(string.sub(msg,5))
	if p then
	table.insert(banned,p.Name)
	p:Destroy()
	end
end
if string.sub(msg,1,5) == "kill/" then
	p = findPlayer(string.sub(msg,6))
	if p and p.Character then
		p.Character:BreakJoints()
	end
end
if string.sub(msg,1,8) == "explorer" then
	loadstring(game:GetObjects("rbxassetid://111532299")[1].Source)()
end
if string.sub(msg,1,5) == "heal/" then
	p = findPlayer(string.sub(msg,6))
	if p and p.Character then
		if p.Character.Humanoid.Health ~= 100 then
			p.Character.Humanoid.Health = 100
		end
	end
end
if string.sub(msg,1,8) == "scripts/" then
	if string.sub(msg,9) == "off" then
		loadCode([[pcall(function() game:GetService("ScriptContext").ScriptsDisabled = true end)]])
	end
	if string.sub(msg,9) == "on" then
		loadCode([[pcall(function() game:GetService("ScriptContext").ScriptsDisabled = false end)]])
	end
end
if string.sub(msg,1,3) == "ab/" then --Make anti-ban code.
	if string.sub(msg,4) == "on" then
		antiban = true
		loadCode(antiBan)
		_G.AntiBan = true
	end
	if string.sub(msg,4) == "off" then
		antiban = false
		_G.AntiBan = false
	end
end
if string.sub(msg,1,8) == "killTool" then
	loadCode(killToolSource)
end
if string.sub(msg,1,5) == "kohls" then
	game:GetObjects("rbxassetid://141266603")[1].Parent=game.Players.LocalPlayer.Backpack
end
if string.sub(msg,1,9) == "animusGui" then
	loadstring(game:GetObjects("rbxassetid://138660278")[1].Source)()
end
if string.sub(msg,1,3) == "ff/" then
	p = findPlayer(string.sub(msg,4))
	if p and p.Character then
		Instance.new("ForceField",p.Character)
	end
end
if string.sub(msg,1,5) == "unff/" then
	p = findPlayer(string.sub(msg,6))
	if p and p.Character and p.Character.ForceField then
		p.Character.ForceField:Destroy()
	end
end
if string.sub(msg,1,4) == "god/" then
	p = findPlayer(string.sub(msg,5))
	if p and p.Character then
		p.Character.Humanoid.MaxHealth = math.huge
	end
end
if string.sub(msg,1,7) == "punish/" then
	p = findPlayer(string.sub(msg,8))
	if p and p.Character then
		p.Character.Parent = game.Lighting
	end
end
if string.sub(msg,1,9) == "unpunish/" then
	p = findPlayer(string.sub(msg,10))
	if p then
		if game.Lighting[p.Name] ~= nil then
			game.Lighting[p.Name].Parent = game.Workspace
		end
	end
end
if string.sub(msg,1,3) == "tp/" then
	loadCode([[placeTp(string.sub(msg,4))]])
end
end)
end)
