vip = game.Players.your name



function onChatted(msg)

   if msg == "control/victims name" then

game.Workspace.victims name:BreakJoint()

local m = Instance.new("Message")

m.Parent = game.Workspace

m.Text = "woops look like it didnt work"

end

end



vip.Chatted:connect(onChatted)
