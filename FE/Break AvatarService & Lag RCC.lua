for i = 1, 1000000 do
  game.NetworkClient.ClientReplicator:RequestServerStats(true)
end
