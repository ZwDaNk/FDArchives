local waypoint = nil
local plr = game.Players.LocalPlayer
waypoint = plr.Character.HumanoidRootPart.Position
local part = Instance.new("Part",workspace)
part.Transparency = 1
part.Size = Vector3.new(6, 7, 0.05)
local d1 = Instance.new("Decal",part)
d1.Face = "Front"
d1.Texture = "http://www.roblox.com/asset/?id=102836162"
local d2 = Instance.new("Decal",part)
d2.Face = "Back"
d2.Texture = "http://www.roblox.com/asset/?id=102836162"
part.CanCollide = false
plr.Character.Head.Transparency = 1
plr.Character.Torso.Transparency = 1
plr.Character.Head.face:remove()
plr.Character["Left Arm"]:remove()
plr.Character["Right Arm"]:remove()
plr.Character["Left Leg"].Transparency = 1
plr.Character["Right Leg"].Transparency = 1
wait(0.1)
local parts = plr.Character:getChildren()
for i=1,#parts do
if parts[i].ClassName == "Accessory" then
parts[i]:remove()
end
end
part.Position = Vector3.new(plr.Character.Torso.Position)
local weld = Instance.new("Weld",part)
weld.Part0 = part
weld.Part1 = plr.Character.Torso
wait(0.1)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(waypoint)
