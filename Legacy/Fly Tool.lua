backpack = game.Players.LocalPlayer.Backpack 

hop = Instance.new("HopperBin") 

hop.Parent = backpack 

hop.Name = "Fly Tool" 

sc = Instance.new("Script") 

sc.Parent = hop 

sc.Source = [[ 
wait() 

local BodyVelocity = Instance.new("BodyVelocity") 
local BodyGyro= Instance.new("BodyGyro") 
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
BodyGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
local Torso = script.Parent.Parent.Parent.Character.Torso 
function Clicked(Mouse) 
BodyGyro.cframe = CFrame.new(Torso.Position,Mouse.hit.p) 
BodyVelocity.velocity = BodyGyro.cframe.lookVector * 50 --Change 50 to the speed you want 
end 
function Selected(Mouse) 
BodyVelocity.Parent = Torso 
BodyGyro.Parent = Torso 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
end 
function Deselected() 
BodyVelocity.Parent = nil 
BodyGyro.Parent = nil 
end 
script.Parent.Selected:connect(Selected) 
script.Parent.Deselected:connect(Deselected)]] 
