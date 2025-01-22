local p = game:GetService("Players").LocalPlayer

for i,v in pairs(game:GetService("Players"):GetPlayers()) do 
local R_C = Instance.new("BallSocketConstraint")
R_C.Parent = p.Character.HumanoidRootPart
local hah = Instance.new("Attachment")
hah.Parent = v.Character.HumanoidRootPart
local hah2 = Instance.new("Attachment")
hah2.Parent = p.Character.HumanoidRootPart
R_C.Attachment0 = hah
R_C.Attachment1 = hah2
R_C.Visible = false
wait(0.1)
end
