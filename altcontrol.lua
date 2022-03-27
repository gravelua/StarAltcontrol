local UniversalAnimation = Instance.new("Animation")

function loadAnimation(id)
    if UniversalAnimation.AnimationId == id then
            stopTracks();
            UniversalAnimation.AnimationId = "1"
    else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation);
            animationTrack:Play()
        end
end
	   
function stopTracks()
    for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
        if (v.Animation.AnimationId:match("rbxassetid")) then
            v:Stop()
        end
    end
end
   
   
local function annouce(anc)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(anc, 'All')
end

local function fancynum(num)
    num = tostring(num)
    return num:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

local antiafk = false

local AntiAFKKickGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Deco = Instance.new("TextLabel")

AntiAFKKickGUI.Name = "AntiAFKKickGUI"
AntiAFKKickGUI.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = AntiAFKKickGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MainFrame.Size = UDim2.new(1, 0, 1, 0)

Deco.Name = "Deco"
Deco.Parent = MainFrame
Deco.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Deco.BackgroundTransparency = 0
Deco.BorderSizePixel = 0
Deco.Size =  UDim2.new(1, 0, 1, 0)
Deco.Font = Enum.Font.SourceSansBold
Deco.FontSize = Enum.FontSize.Size14
Deco.Text = "Screen Covered to prevent lag 💸"
Deco.TextColor3 = Color3.new(1, 1, 1)
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true

local player = game.Players.LocalPlayer
local admsg = "."
local isamod = false
local prefix = "."
local mods = {2341657889}
local ucdrop = false

local cashaura = false
local cashauraplr = nil
local adtoggle = false
local droptoggle = false
local function cmds(msg,plr)
	if isamod == false or table.find(mods,plr) then
		Mod = game.Players:GetPlayerByUserId(plr)
		isamod = table.find(mods,player.UserId)
		if msg == ".refresh" then
			if not isamod then
                ucdrop = false
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.RightHand:Destroy()
                game.Players.LocalPlayer.Character.LeftHand:Destroy()
                game.Players.LocalPlayer.Character.LowerTorso:Destroy()
                game.Players.LocalPlayer.Character.UpperTorso:Destroy()
                game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
                game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
                game.Players.LocalPlayer.Character.RightFoot:Destroy()
                game.Players.LocalPlayer.Character.LeftFoot:Destroy()
                game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
                game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
                game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
                game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
                game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
                game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
			end
		end
		if msg == ".lasso" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://7942896991")
			end
		end
		if msg == ".chicken" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://4841399916")
			end
		end
		if msg == ".punch" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://7202863182")
			end
		end
		if msg == ".dance1" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://3189773368")
			end
		end
		if msg == ".waves" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://7465981288")
			end
		end
		if msg == ".dance2" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://3189776546")
			end
		end
		if msg == ".pray" then
			if not isamod then
                stopTracks()
                wait(0.1)
                loadAnimation("rbxassetid://3487719500")
			end
		end
		if msg == ".ucdrop admin" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-870.849854, -38.3992119, -589.073975, 0.999470055, 1.59974558e-08, -0.0325513408, -1.82681124e-08, 1, -6.94587428e-08, 0.0325513408, 7.00165828e-08, 0.999470055)
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-6.5,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop club" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-262.7051086425781, -6.208347320556641, -371.5260314941406)
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-6.5,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop basketball" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-931.6194458007812, 22.099815368652344, -482.3985290527344)
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-8,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop school" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-579.064697265625, 21.24999237060547, 190.75318908691406)
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-6.5,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop bank" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-376.9765625, 21.24999237060547, -296.9599914550781)
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-6.5,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop host" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.CFrame = Mod.Character.HumanoidRootPart.CFrame
                local cur_human = player.Character.HumanoidRootPart.CFrame
                player.Character.HumanoidRootPart.CFrame = CFrame.new(cur_human.X,cur_human.Y-6.5,cur_human.Z)
                wait(.1)
                player.Character.HumanoidRootPart.Anchored = true
                wait(1)
                ucdrop = true
                repeat
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                wait(0.1)
                until ucdrop == false
            end
		end
		if msg == ".ucdrop false" then
			if not isamod then
                ucdrop = false
                player.Character.HumanoidRootPart.Anchored = false
                wait()
                player.Character.HumanoidRootPart.CFrame = Mod.Character.HumanoidRootPart.CFrame
            end
		end
		if msg == ".warp" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
		end
		if msg == ".setup admin" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".setup bank" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".setup train" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".setup cell" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".setup basketball" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".setup host" then
			if not isamod then
                ucdrop = false
                stopTracks()
            end
        end
		if msg == ".checkcash" then
			if not isamond then
				local amt = 0
				for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
					if v.Name == "MoneyDrop" then
						local cur = string.split(v.BillboardGui.TextLabel.Text,"$")[2]
						if string.match(cur,',') then
							amt = amt + cur:gsub("%,","")
						else
							amt = amt + cur
						end
						print(string.split(v.BillboardGui.TextLabel.Text,'$')[2])
					end
				end
				function fornum(amt)
					amt = tostring(amt)
					return amt:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
				end
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(fornum(amt).."cm", 'All')
			end
		end
		if msg == ".unpickup" then
            if not isamod then
                cashaura = false
            end
        end
        if string.find(string.split(msg)[1],prefix.."pickup") then
            if not isamod then
                local splittedlel = string.split(msg,' ')
                if splittedlel[2] ~= nil then
                    local txt = splittedlel[2]
                    print(txt)
                    for i,v in pairs(game.Players:GetChildren()) do
                        if (string.sub(string.lower(v.Name),1,string.len(txt))) == string.lower(txt) then
                            cashauraplr = v.Name
                            game.Players[cashauraplr].Character.HumanoidRootPart.CFrame = Mod.Character.HumanoidRootPart.CFrame
							if player.Name == cashauraplr then
								cashaura = true
								local Autoloop
								local autoloopfun = function()
									for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
										if v:IsA('Part') then
											if (v.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 14 then
												fireclickdetector(v:FindFirstChild('ClickDetector'))
											end
										end
									end
								end;
								local Begin = function()
									Autoloop = game:GetService("RunService").Heartbeat:Connect(autoloopfun);
								end;
								local Stop = function()
									Autoloop:Disconnect()
								end;
								Begin()	
								repeat wait() until cashaura == false
								Stop()
							end
                            return
                        end  
                    end
                end
            end
        end
	end
end

for i,v in pairs(game:GetService('Players'):GetChildren()) do
	if table.find(mods,v.UserId) then
		v.Chatted:Connect(function(msg)
			cmds(msg,v.UserId)
		end)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	if table.find(mods,plr.UserId) then
		plr.Chatted:Connect(function(msg)
			cmds(msg,plr.UserId)
		end)
	end
end)
