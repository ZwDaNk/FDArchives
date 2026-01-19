local totallyfun = 0
local injected = 0
local startomg = false
X=function(f)
        return coroutine.resume(coroutine.create(f))
end

--print'Wait 5 more second.'
--wait(2)
print'Executing'
game:GetObjects("rbxassetid://175873944")[1].Parent = game.CoreGui
game:GetObjects("rbxassetid://175380200")[1].Parent = game.CoreGui
wait()
X(function()
while wait() do
	if startomg == false then
		if game.CoreGui:FindFirstChild("Load")~= nil then
			game.CoreGui:FindFirstChild("Load").Frame:TweenPosition(UDim2.new(0.5,-200,0,0), "Out", "Quad", 1)
			startomg = true
		end
	end
	if game.CoreGui:FindFirstChild("Load")~= nil then
	game.CoreGui:FindFirstChild("Load").Frame.Frame.Size = UDim2.new( (injected / totallyfun) , 0, 1, -20) 
	if injected ~= totallyfun then
	game.CoreGui:FindFirstChild("Load").Frame.load.Text = "LOADING: " .. injected .. "/" .. totallyfun
	else
	game.CoreGui:FindFirstChild("Load").Frame.load.Text = "LOADING COMPLETED!"
	end
	if injected >= totallyfun then
		game.CoreGui:FindFirstChild("Ro-Xploit 4.0").Open.Visible = true
		wait(2)
		game.CoreGui:FindFirstChild("Load").Frame:TweenPosition(UDim2.new(0.5,-200,0,-50), "Out", "Quad", 1)
		wait(1)
		game.CoreGui:FindFirstChild("Load"):Remove()
		break
	end
	end
end
end)


if game.CoreGui:FindFirstChild("Model")~= nil then
for i,v in pairs(game.CoreGui.Model:GetChildren())do
totallyfun = totallyfun + 1
end	
end
for i,v in pairs(game.CoreGui.Model:GetChildren())do
if v.ClassName == "ScreenGui" then
v.Parent = game.CoreGui
print('GUI LOADED: '.. v.Name)
injected = injected + 1
end
end
wait()
for i,v in pairs(game.CoreGui.Model:GetChildren())do
if v.ClassName == "LocalScript" then
print(i .."- ".. v.Name)
loadstring(v.Source)()
injected = injected + 1
end
end
wait(1)
game.CoreGui:FindFirstChild("Ro-Xploit 4.0").Open.Visible = true
game.StarterGui:SetCoreGuiEnabled("All",true)
