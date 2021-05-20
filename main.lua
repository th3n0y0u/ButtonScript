local buttonvalue = script.Parent:FindFirstChild("Button")
local button_pressed = false

script.Parent.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if button_pressed == false then
		if player.leaderstats.Buttons.Value == 0 then
			if player then
				button_pressed = true
				player.leaderstats.Buttons.Value += buttonvalue.Value
				script.Parent.BrickColor = BrickColor.new(Color3.new(151, 0, 0)) 
			end
		end
	end
end) 