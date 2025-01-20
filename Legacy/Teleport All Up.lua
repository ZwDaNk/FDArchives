p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i] ~= "Gorngulot" then 
p[i].Character.Torso.CFrame = CFrame.new(0,102050,0) 
end 
end
