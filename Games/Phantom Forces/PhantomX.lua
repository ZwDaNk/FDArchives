game:GetObjects("rbxassetid://296647938")[1].Parent = game.CoreGui

local PhantomX = game.CoreGui:WaitForChild("PhantomX")

if game.PlaceId == 292439477 then
	local exec = Instance.new("Script",game.CoreGui)
	exec.Source = PhantomX.CONTROL.Source
	exec.Name = "PhantomXLoader"
	loadstring(exec.Source)()
else
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "[PhantomX]: PhantomX could not load correctly, make sure you are in Phantom Forces!"
	})
end
