local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
)()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window =
    Fluent:CreateWindow(
    {
        Title = "Wildcard Hub",
        SubTitle = "discord.gg/5H8JWZbW4X",
        TabWidth = 160,
        Size = UDim2.fromOffset(530, 350),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.End
    }
)
local Tabs = {
    Cuttay = Window:AddTab({Title = "Kaitun/Cuttay"}),
    Setting = Window:AddTab({Title = "Setting"}),
    Teleport = Window:AddTab({Title = "Teleport"}),
    Fruit = Window:AddTab({Title = "Devil Fruits"}),
    Shop = Window:AddTab({Title = "Shop"}),
    Misc = Window:AddTab({Title = "Misc"}),
    Hop = Window:AddTab({Title = "Hop"})
}
--// Check Quest
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if First_Sea then
        if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == "" then -- Bandit
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == "Jungle" then -- Monkey
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == "Jungle" then -- Gorilla
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == "Buggy" then -- Pirate
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == "Buggy" then -- Brute
            Ms = "Brute"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == "Desert" then -- Desert Bandit
            Ms = "Desert Bandit"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == "Desert" then -- Desert Officer
            Ms = "Desert Officer"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == "Snow" then -- Snow Bandit
            Ms = "Snow Bandit"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == "Snow" then -- Snowman
            Ms = "Snowman"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == "Marine" then -- Chief Petty Officer
            Ms = "Chief Petty Officer"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == "Sky" then -- Sky Bandit
            Ms = "Sky Bandit"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == "Sky" then -- Dark Master
            Ms = "Dark Master"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == "Prison" then -- Prisoner
            Ms = "Prisoner"
            NameQuest = "PrisonerQuest"
            QuestLv = 1
            NameMon = "Prisoner"
            CFrameQ =
                CFrame.new(
                5310.60547,
                0.350014925,
                474.946594,
                0.0175017118,
                0,
                0.999846935,
                0,
                1,
                0,
                -0.999846935,
                0,
                0.0175017118
            )
            CFrameMon =
                CFrame.new(
                4937.31885,
                0.332031399,
                649.574524,
                0.694649816,
                0,
                -0.719348073,
                0,
                1,
                0,
                0.719348073,
                0,
                0.694649816
            )
        elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == "Prison" then -- Dangerous Prisoner
            Ms = "Dangerous Prisoner"
            NameQuest = "PrisonerQuest"
            QuestLv = 2
            NameMon = "Dangerous Prisoner"
            CFrameQ =
                CFrame.new(
                5310.60547,
                0.350014925,
                474.946594,
                0.0175017118,
                0,
                0.999846935,
                0,
                1,
                0,
                -0.999846935,
                0,
                0.0175017118
            )
            CFrameMon =
                CFrame.new(
                5099.6626,
                0.351562679,
                1055.7583,
                0.898906827,
                0,
                -0.438139856,
                0,
                1,
                0,
                0.438139856,
                0,
                0.898906827
            )
        elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == "Colosseum" then -- Toga Warrior
            Ms = "Toga Warrior"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == "Colosseum" then -- Gladiator
            Ms = "Gladiator"
            NameQuest = "ColosseumQuest"
            QuestLv = 2
            NameMon = "Gladiator"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == "Magma" then -- Military Soldier
            Ms = "Military Soldier"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == "Magma" then -- Military Spy
            Ms = "Military Spy"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon =
                CFrame.new(
                -5787.00293,
                75.8262634,
                8651.69922,
                0.838590562,
                0,
                -0.544762194,
                0,
                1,
                0,
                0.544762194,
                0,
                0.838590562
            )
        elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == "Fishman" then -- Fishman Warrior
            Ms = "Fishman Warrior"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        3000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                )
            end
        elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == "Fishman" then -- Fishman Commando
            Ms = "Fishman Commando"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        3000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                )
            end
        elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == "Sky Island" then -- God's Guard
            Ms = "God's Guard"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        3000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688)
                )
            end
        elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == "Sky Island" then -- Shanda
            Ms = "Shanda"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        3000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                )
            end
        elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == "Sky Island" then -- Royal Squad
            Ms = "Royal Squad"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == "Sky Island" then -- Royal Soldier
            Ms = "Royal Soldier"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == "Fountain" then -- Galley Pirate
            Ms = "Galley Pirate"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == "Fountain" then -- Galley Captain
            Ms = "Galley Captain"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if Second_Sea then
        if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == "Area 1" then -- Raider
            Ms = "Raider"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == "Area 1" then -- Mercenary
            Ms = "Mercenary"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == "Area 2" then -- Swan Pirate
            Ms = "Swan Pirate"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == "Area 2" then -- Factory Staff
            Ms = "Factory Staff"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == "Marine" then -- Marine Lieutenant
            Ms = "Marine Lieutenant"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == "Marine" then -- Marine Captain
            Ms = "Marine Captain"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == "Zombie" then -- Zombie
            Ms = "Zombie"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == "Zombie" then -- Vampire
            Ms = "Vampire"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == "Snow Mountain" then -- Snow Trooper
            Ms = "Snow Trooper"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == "Snow Mountain" then -- Winter Warrior
            Ms = "Winter Warrior"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == "Ice Fire" then -- Lab Subordinate
            Ms = "Lab Subordinate"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == "Ice Fire" then -- Horned Warrior
            Ms = "Horned Warrior"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == "Ice Fire" then -- Magma Ninja
            Ms = "Magma Ninja"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == "Ice Fire" then -- Lava Pirate
            Ms = "Lava Pirate"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == "Ship" then -- Ship Deckhand
            Ms = "Ship Deckhand"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == "Ship" then -- Ship Engineer
            Ms = "Ship Engineer"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == "Ship" then -- Ship Steward
            Ms = "Ship Steward"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == "Ship" then -- Ship Officer
            Ms = "Ship Officer"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == "Frost" then -- Arctic Warrior
            Ms = "Arctic Warrior"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
            if
                _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
                )
            end
        elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == "Frost" then -- Snow Lurker
            Ms = "Snow Lurker"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == "Forgotten" then -- Sea Soldier
            Ms = "Sea Soldier"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == "Forgotten" then -- Water Fighter
            Ms = "Water Fighter"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    end
    if Third_Sea then
        if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == "Pirate Port" then -- Pirate Millionaire
            Ms = "Pirate Millionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 1
            NameMon = "Pirate Millionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
        elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == "Pirate Port" then -- Pistol Billoonaire
            Ms = "Pistol Billionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 2
            NameMon = "Pistol Billionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
        elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == "Amazon" then -- Dragon Crew Warrior
            Ms = "Dragon Crew Warrior"
            NameQuest = "AmazonQuest"
            QuestLv = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
        elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == "Amazon" then -- Dragon Crew Archer
            Ms = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            QuestLv = 2
            NameMon = "Dragon Crew Archer"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
        elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == "Amazon" then -- Female Islander
            Ms = "Female Islander"
            NameQuest = "AmazonQuest2"
            QuestLv = 1
            NameMon = "Female Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
        elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == "Amazon" then -- Giant Islander
            Ms = "Giant Islander"
            NameQuest = "AmazonQuest2"
            QuestLv = 2
            NameMon = "Giant Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
        elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == "Marine Tree" then -- Marine Commodore
            Ms = "Marine Commodore"
            NameQuest = "MarineTreeIsland"
            QuestLv = 1
            NameMon = "Marine Commodore"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == "Marine Tree" then -- Marine Rear Admiral
            Ms = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            QuestLv = 2
            NameMon = "Marine Rear Admiral"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == "Deep Forest" then -- Fishman Raide
            Ms = "Fishman Raider"
            NameQuest = "DeepForestIsland3"
            QuestLv = 1
            NameMon = "Fishman Raider"
            CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == "Deep Forest" then -- Fishman Captain
            Ms = "Fishman Captain"
            NameQuest = "DeepForestIsland3"
            QuestLv = 2
            NameMon = "Fishman Captain"
            CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == "Deep Forest" then -- Forest Pirate
            Ms = "Forest Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 1
            NameMon = "Forest Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == "Deep Forest" then -- Mythological Pirate
            Ms = "Mythological Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 2
            NameMon = "Mythological Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == "Deep Forest" then -- Jungle Pirate
            Ms = "Jungle Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 1
            NameMon = "Jungle Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == "Deep Forest" then -- Musketeer Pirate
            Ms = "Musketeer Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == "Haunted Castle" then
            Ms = "Reborn Skeleton"
            NameQuest = "HauntedQuest1"
            QuestLv = 1
            NameMon = "Reborn Skeleton"
            CFrameQ =
                CFrame.new(
                -9480.80762,
                142.130661,
                5566.37305,
                -0.00655503059,
                4.52954225e-08,
                -0.999978542,
                2.04920472e-08,
                1,
                4.51620679e-08,
                0.999978542,
                -2.01955679e-08,
                -0.00655503059
            )
            CFrameMon =
                CFrame.new(
                -8761.77148,
                183.431747,
                6168.33301,
                0.978073597,
                -1.3950732e-05,
                -0.208259016,
                -1.08073925e-06,
                1,
                -7.20630269e-05,
                0.208259016,
                7.07080399e-05,
                0.978073597
            )
        elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == "Haunted Castle" then
            Ms = "Living Zombie"
            NameQuest = "HauntedQuest1"
            QuestLv = 2
            NameMon = "Living Zombie"
            CFrameQ =
                CFrame.new(
                -9480.80762,
                142.130661,
                5566.37305,
                -0.00655503059,
                4.52954225e-08,
                -0.999978542,
                2.04920472e-08,
                1,
                4.51620679e-08,
                0.999978542,
                -2.01955679e-08,
                -0.00655503059
            )
            CFrameMon =
                CFrame.new(
                -10103.7529,
                238.565979,
                6179.75977,
                0.999474227,
                2.77547141e-08,
                0.0324240364,
                -2.58006327e-08,
                1,
                -6.06848474e-08,
                -0.0324240364,
                5.98163865e-08,
                0.999474227
            )
        elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == "Haunted Castle" then
            Ms = "Demonic Soul"
            NameQuest = "HauntedQuest2"
            QuestLv = 1
            NameMon = "Demonic Soul"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == "Haunted Castle" then
            Ms = "Posessed Mummy"
            NameQuest = "HauntedQuest2"
            QuestLv = 2
            NameMon = "Posessed Mummy"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == "Nut Island" then
            Ms = "Peanut Scout"
            NameQuest = "NutsIslandQuest"
            QuestLv = 1
            NameMon = "Peanut Scout"
            CFrameQ =
                CFrame.new(
                -2105.53198,
                37.2495995,
                -10195.5088,
                -0.766061664,
                0,
                -0.642767608,
                0,
                1,
                0,
                0.642767608,
                0,
                -0.766061664
            )
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == "Nut Island" then
            Ms = "Peanut President"
            NameQuest = "NutsIslandQuest"
            QuestLv = 2
            NameMon = "Peanut President"
            CFrameQ =
                CFrame.new(
                -2105.53198,
                37.2495995,
                -10195.5088,
                -0.766061664,
                0,
                -0.642767608,
                0,
                1,
                0,
                0.642767608,
                0,
                -0.766061664
            )
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == "Ice Cream Island" then
            Ms = "Ice Cream Chef"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 1
            NameMon = "Ice Cream Chef"
            CFrameQ =
                CFrame.new(
                -819.376709,
                64.9259796,
                -10967.2832,
                -0.766061664,
                0,
                0.642767608,
                0,
                1,
                0,
                -0.642767608,
                0,
                -0.766061664
            )
            CFrameMon =
                CFrame.new(
                -789.941528,
                209.382889,
                -11009.9805,
                -0.0703101531,
                -0,
                -0.997525156,
                -0,
                1.00000012,
                -0,
                0.997525275,
                0,
                -0.0703101456
            )
        elseif
            Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == "Ice Cream Island"
         then
            Ms = "Ice Cream Commander"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 2
            NameMon = "Ice Cream Commander"
            CFrameQ =
                CFrame.new(
                -819.376709,
                64.9259796,
                -10967.2832,
                -0.766061664,
                0,
                0.642767608,
                0,
                1,
                0,
                -0.642767608,
                0,
                -0.766061664
            )
            CFrameMon =
                CFrame.new(
                -789.941528,
                209.382889,
                -11009.9805,
                -0.0703101531,
                -0,
                -0.997525156,
                -0,
                1.00000012,
                -0,
                0.997525275,
                0,
                -0.0703101456
            )
        elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == "Cake Island" then
            Ms = "Cookie Crafter"
            NameQuest = "CakeQuest1"
            QuestLv = 1
            NameMon = "Cookie Crafter"
            CFrameQ =
                CFrame.new(
                -2022.29858,
                36.9275894,
                -12030.9766,
                -0.961273909,
                0,
                -0.275594592,
                0,
                1,
                0,
                0.275594592,
                0,
                -0.961273909
            )
            CFrameMon =
                CFrame.new(
                -2321.71216,
                36.699482,
                -12216.7871,
                -0.780074954,
                0,
                0.625686109,
                0,
                1,
                0,
                -0.625686109,
                0,
                -0.780074954
            )
        elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == "Cake Island" then
            Ms = "Cake Guard"
            NameQuest = "CakeQuest1"
            QuestLv = 2
            NameMon = "Cake Guard"
            CFrameQ =
                CFrame.new(
                -2022.29858,
                36.9275894,
                -12030.9766,
                -0.961273909,
                0,
                -0.275594592,
                0,
                1,
                0,
                0.275594592,
                0,
                -0.961273909
            )
            CFrameMon =
                CFrame.new(
                -1418.11011,
                36.6718941,
                -12255.7324,
                0.0677844882,
                0,
                0.997700036,
                0,
                1,
                0,
                -0.997700036,
                0,
                0.0677844882
            )
        elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == "Cake Island" then
            Ms = "Baking Staff"
            NameQuest = "CakeQuest2"
            QuestLv = 1
            NameMon = "Baking Staff"
            CFrameQ =
                CFrame.new(
                -1928.31763,
                37.7296638,
                -12840.626,
                0.951068401,
                -0,
                -0.308980465,
                0,
                1,
                -0,
                0.308980465,
                0,
                0.951068401
            )
            CFrameMon =
                CFrame.new(
                -1980.43848,
                36.6716766,
                -12983.8418,
                -0.254443765,
                0,
                -0.967087567,
                0,
                1,
                0,
                0.967087567,
                0,
                -0.254443765
            )
        elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == "Cake Island" then
            Ms = "Head Baker"
            NameQuest = "CakeQuest2"
            QuestLv = 2
            NameMon = "Head Baker"
            CFrameQ =
                CFrame.new(
                -1928.31763,
                37.7296638,
                -12840.626,
                0.951068401,
                -0,
                -0.308980465,
                0,
                1,
                -0,
                0.308980465,
                0,
                0.951068401
            )
            CFrameMon =
                CFrame.new(
                -2251.5791,
                52.2714615,
                -13033.3965,
                -0.991971016,
                0,
                -0.126466095,
                0,
                1,
                0,
                0.126466095,
                0,
                -0.991971016
            )
        elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == "Choco Island" then
            Ms = "Cocoa Warrior"
            NameQuest = "ChocQuest1"
            QuestLv = 1
            NameMon = "Cocoa Warrior"
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon =
                CFrame.new(
                167.978516,
                26.2254658,
                -12238.874,
                -0.939700961,
                0,
                0.341998369,
                0,
                1,
                0,
                -0.341998369,
                0,
                -0.939700961
            )
        elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == "Choco Island" then
            Ms = "Chocolate Bar Battler"
            NameQuest = "ChocQuest1"
            QuestLv = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon =
                CFrame.new(
                701.312073,
                25.5824986,
                -12708.2148,
                -0.342042685,
                0,
                -0.939684391,
                0,
                1,
                0,
                0.939684391,
                0,
                -0.342042685
            )
        elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == "Choco Island" then
            Ms = "Sweet Thief"
            NameQuest = "ChocQuest2"
            QuestLv = 1
            NameMon = "Sweet Thief"
            CFrameQ =
                CFrame.new(
                151.198242,
                23.8907146,
                -12774.6172,
                0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                0.422592998
            )
            CFrameMon =
                CFrame.new(
                -140.258301,
                25.5824986,
                -12652.3115,
                0.173624337,
                -0,
                -0.984811902,
                0,
                1,
                -0,
                0.984811902,
                0,
                0.173624337
            )
        elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == "Choco Island" then
            Ms = "Candy Rebel"
            NameQuest = "ChocQuest2"
            QuestLv = 2
            NameMon = "Candy Rebel"
            CFrameQ =
                CFrame.new(
                151.198242,
                23.8907146,
                -12774.6172,
                0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                0.422592998
            )
            CFrameMon =
                CFrame.new(
                47.9231453,
                25.5824986,
                -13029.2402,
                -0.819156051,
                0,
                -0.573571265,
                0,
                1,
                0,
                0.573571265,
                0,
                -0.819156051
            )
        elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == "Candy Island" then
            Ms = "Candy Pirate"
            NameQuest = "CandyQuest1"
            QuestLv = 1
            NameMon = "Candy Pirate"
            CFrameQ =
                CFrame.new(
                -1149.328,
                13.5759039,
                -14445.6143,
                -0.156446099,
                0,
                -0.987686574,
                0,
                1,
                0,
                0.987686574,
                0,
                -0.156446099
            )
            CFrameMon =
                CFrame.new(
                -1437.56348,
                17.1481285,
                -14385.6934,
                0.173624337,
                -0,
                -0.984811902,
                0,
                1,
                -0,
                0.984811902,
                0,
                0.173624337
            )
        elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == "Candy Island" then
            Ms = "Snow Demon"
            NameQuest = "CandyQuest1"
            QuestLv = 2
            NameMon = "Snow Demon"
            CFrameQ =
                CFrame.new(
                -1149.328,
                13.5759039,
                -14445.6143,
                -0.156446099,
                0,
                -0.987686574,
                0,
                1,
                0,
                0.987686574,
                0,
                -0.156446099
            )
            CFrameMon =
                CFrame.new(
                -916.222656,
                17.1481285,
                -14638.8125,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
        elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == "Tiki Outpost" then
            Ms = "Isle Outlaw"
            NameQuest = "TikiQuest1"
            QuestLv = 1
            NameMon = "Isle Outlaw"
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
            CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
        elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == "Tiki Outpost" then
            Ms = "Island Boy"
            NameQuest = "TikiQuest1"
            QuestLv = 2
            NameMon = "Island Boy"
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
            CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
        elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == "Tiki Outpost" then
            Ms = "Isle Champion"
            NameQuest = "TikiQuest2"
            QuestLv = 2
            NameMon = "Isle Champion"
            CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
            CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
        end
    end
end
spawn(function()
    while task.wait() do
        pcall(function()
        if _G.AutoFarm  then
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
            if _G.AutoFarmFast and (MyLevel >= 30 and MyLevel <= 300) then
          	if MyLevel >= 10 and MyLevel <= 69 then
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
				BringMobFarm = false
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "God's Guard [Lv. 450]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(_G.Select_Weapon)
                                _G.AutoFarmLv = false
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
								BringMobFarm = true
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                v.HumanoidRootPart.Transparency = 1
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoFarm  or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "God's Guard [Lv. 450]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
                     	_G.AutoFarmLv = false
                     	BringMobFarm = false
                     	UnEquipWeapon(_G.Select_Weapon)
						CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
						getgenv().ToTarget(CFrameMon)
						if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
						end
                   end
   			elseif MyLevel >= 70 and MyLevel <= 310 then
   			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            	end
   			if QuestC.Visible == false then
   			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
				BringMobFarm = false
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "God's Guard [Lv. 450]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(_G.Select_Weapon)
                                _G.AutoFarmLv = true
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                v.HumanoidRootPart.Transparency = 1
								BringMobFarm = true
								PosMon = v.HumanoidRootPart.CFrame
						        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoFarm  or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "God's Guard [Lv. 450]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
                     	_G.AutoFarmLv = true
                     	BringMobFarm = false
                     	UnEquipWeapon(_G.Select_Weapon)
						CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
						getgenv().ToTarget(CFrameMon)
						if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
						end
                   end
              elseif QuestC.Visible == true then
                local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
  			  local Player = string.split(quest," ")[2]
     			getgenv().SelectPly = string.split(quest," ")[2]
     			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
           	 	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
           	 	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
   		     end
     			if string.find(quest,"Defeat") then
     	 		  repeat task.wait()
        	  	    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            	 		   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        	    		end
						game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                       end
						 EquipWeapon(_G.Select_Weapon)
             		    TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,0,5))
             		    game:GetService("VirtualUser"):CaptureController()
            	   	  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
     	  		      game.Players:FindFirstChild(Player).Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
             			game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
						 game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
      			  until game.Players:FindFirstChild(Player).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(Player) or not FastFarm()
        				if not game.Players:FindFirstChild(Player) then
         		  		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
        				end   
     			  else
     					UnEquipWeapon(_G.Select_Weapon)
            			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
     			end
		   end
				elseif MyLevel >= 300 and MyLevel <= 2550 then
			  if QuestC.Visible == false then
				_G.AutoFarmLv = true
				else
				_G.AutoFarmLv = true
				end
			   else
					_G.AutoFarmLv = true
           	end
     	 end
		 if _G.AutoFarmLv then
                CheckQuest()
                if QuestC.Visible == false then
                    CheckQuest()
                    repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30000 or not _G.Setting.Config["Autofarm"]
                    if (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30000 then
						wait(.2)
						BringMobFarm = false
                        wait(.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                        getgenv().ToTarget(CFrameMon)
                    end
                elseif QuestC.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat game.RunService.Heartbeat:wait()
                                            EquipWeapon(_G.Select_Weapon)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                            v.HumanoidRootPart.CanCollide = false
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.Humanoid.WalkSpeed = 20
                                            v.Head.CanCollide = false
											BringMobFarm = true
                                            v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                               			 v.HumanoidRootPart.Transparency = 1
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.Setting.Config["Autofarm"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
										CheckQuest()
                                        getgenv().ToTarget(CFrameMon)
                                    end
                                end
                                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                   				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
               				 end
                            end
                        end
                    else
                        BringMobFarm = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                               else
                                     getgenv().ToTarget(CFrameMon)
                                     UnEquipWeapon(_G.Select_Weapon)
                                    end
                     	      end
                	      end
         		    end
				end
           end)
     end
 end)
 function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

function Tween(Pos)
local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if game.Players.LocalPlayer.Character.Humanoid.Sit and not _G.KillShark and not _G.KillPiranha and not _G.KillTerrorShark and not _G.KillFishCrew then
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
pcall(function()
    local tween = game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/getgenv().config["Tween Speed"], Enum.EasingStyle.Linear),
        {CFrame = Pos}
    )
    tween:Play()
    if Distance <= 250 or _G.StopTween then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        NoClip = false
    end
end)
end

function Teleport(P)
local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
local Speed = Distance >= 1 and getgenv().config["Tween Speed"] or 1
pcall(function()
    local teleport = game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P}
    )
    teleport:Play()
    if _G.StopTween then
        teleport:Cancel()
        NoClip = false
    end
    NoClip = true
    wait(Distance/Speed)
    NoClip = false
end)
end
function BP(P)
pcall(function()
    repeat task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end)
end

function EquipTool(Toolse)
local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Toolse)
if tool then
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
end
end

function UnEquipTool(Toolse)
if game.Players.LocalPlayer.Character:FindFirstChild(Toolse) then
    wait(.5)
    game.Players.LocalPlayer.Character:FindFirstChild(Toolse).Parent = game.Players.LocalPlayer.Backpack
end
end

function AutoHaki()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function RedeemCode(Code)
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end

function Click()
local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()
CombatFramework.activeController.attacking = false
CombatFramework.activeController.timeToNextAttack = 0
CombatFramework.activeController.hitboxMagnitude = 180
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

getgenv().NoDieEffect = true
if getgenv().NoDieEffect then
local effectContainer = game:GetService("ReplicatedStorage").Effect.Container
if effectContainer:FindFirstChild("Death") then
    effectContainer.Death:Destroy()
end
if effectContainer:FindFirstChild("Respawn") then
    effectContainer.Respawn:Destroy()
end
end

spawn(function()
while wait() do
    local rs = game:GetService("ReplicatedStorage")
    local guiAssets = rs.Assets.GUI
    local soundStorage = rs.Util.Sound.Storage.Other
    guiAssets.DamageCounter.Enabled = false
    soundStorage:FindFirstChild("LevelUp_Proxy"):Destroy()
    soundStorage:FindFirstChild("LevelUp"):Destroy()
    effectContainer.Respawn:Destroy()  
    effectContainer.LevelUp:Destroy()
end
end)

local slashHit = game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit')
if slashHit then
slashHit:Destroy()
end

function CheckNotify(abc)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
    if v.Name == "NotificationTemplate" then
        if string.find(v.Text, abc) then
            return true
        end
    end
end
end

spawn(function()
while task.wait() do
    pcall(function()
        if getgenv().config["Skip Level 1 - 300"] or NoClip == true then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                local Noclip = Instance.new("BodyVelocity")
                Noclip.Name = "BodyClip"
                Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                Noclip.Velocity = Vector3.new(0,0,0)
            end
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
    end)
end
end)

spawn(function()
pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().config["Skip Level 1 - 300"] or NoClip == true then
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end)
end)
end)


-- function :

spawn(function()
while wait() do
    pcall(function()
        if getgenv().config["Skip Level 1 - 300"] == false then
            QuestCheck()
            local questTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
            if not string.find(questTitle, NameMon) or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
                        BP(CFrameMon)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                        Teleport(CFrameQuest)
                    end
                else
                    Teleport(CFrameQuest)
                end
                if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                end
            elseif string.find(questTitle, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == Mon then
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipTool(SelectWP)
                            Teleport(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            PosMon = v.HumanoidRootPart.CFrame
                            BringMob = true
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        until getgenv().config["Skip Level 1 - 300"] == true or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                    end
                end
                Teleport(CFrameMon)
                BringMob = false
                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                    Teleport(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end
        end
    end)
end
end)

spawn(function()
while task.wait() do
    pcall(function()
        if getgenv().config["Skip Level 1 - 300"] == true then
            if DjtShanda then
                if YourLevel == 50 and YourLevel <= 300 then
                    DjtShanda = false
                    KillPlayers = true
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if DjtShanda then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Shanda" then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            AutoHaki()
                            EquipTool(SelectWP)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            StardMag = true
                            FastMon = v.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                            Teleport(v.HumanoidRootPart.CFrame * CFrame.new(5,20,2))
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        until DjtShanda == false or not v.Parent or v.Humanoid.Health <= 0
                        StardMag = false
                        Teleport(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                    end
                end
            end
        else
            if game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
                Teleport(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
            end
        end
    end)
end
end)

spawn(function()
pcall(function()
    while wait(.1) do
        if KillPlayers then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
        end
    end
end)
end)

spawn(function()
while wait() do
    pcall(function()
        if KillPlayers then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                wait(.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            else
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent then
                            repeat wait()
                                AutoHaki()
                                EquipTool(SelectWP)
                                Teleport(v.HumanoidRootPart.CFrame * CFrame.new(0,5,2))
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0							
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                Useskill = true
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until KillPlayers == false or v.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart")
                            Useskill = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    end
                end
            end
        else
            for i,v in pairs(Caservers) do
                if v.Data.Level.Value <= 20 or v.Data.Level.Value >= 150 then
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                end
            end
            if game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter") == "I don't have anything for you right now. Come back later." then
                KillPlayers = false
                Hop()
                print("Hop Servers Because Not Players")
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if Useskill then
            if Distance <= 10 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if getgenv().config["Lock Level"]["Enabled"] == true then
            if YourLevel == getgenv().config["Lock Level"]["Level"] or YourLevel >= getgenv().config["Lock Level"]["Level"] then
                game:GetService("Players").LocalPlayer:Kick("[Kaitun] Kicked By Level Lock")
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        QuestCheck()
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if not getgenv().config["Skip Level 1 - 300"] and BringMob and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                v.HumanoidRootPart.CFrame = PosMon
                v.Humanoid:ChangeState(14)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
            elseif not getgenv().config["Skip Level 1 - 300"] and BringMob and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                v.HumanoidRootPart.CFrame = PosMon
                v.Humanoid:ChangeState(14)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
            elseif getgenv().config["Skip Level 1 - 300"] == true and StardMag then
                if v.Name == "Shanda" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    v.HumanoidRootPart.CFrame = FastMon
                    v.Humanoid:ChangeState(14)
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end
    end)
end
end)
---------Tween

function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
        Speed = 300
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {
            CFrame = P1
        }
    ):Play()
    if _G.CancelTween2 then
        game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            {
                CFrame = P1
            }
        ):Cancel()
    end
    _G.Clip2 = true
    wait(Distance / Speed)
    _G.Clip2 = false
end

--BTP
function BTP(Position)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
------Bypass TP 2
function GetIsLand(...)
    local RealtargetPos = {...}
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = targetPos
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos.Position
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
        RealTarget = RealTarget.p
    end

    local ReturnValue
    local CheckInOut = math.huge
    if game.Players.LocalPlayer.Team then
        for i, v in pairs(
            game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren(

            )
        ) do
            local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude
            if ReMagnitude < CheckInOut then
                CheckInOut = ReMagnitude
                ReturnValue = v.Name
            end
        end
        if ReturnValue then
            return ReturnValue
        end
    end
end

function toTarget(...)
    local RealtargetPos = {...}
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then
            tween:Cancel()
        end
        repeat
            wait()
        until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(0.2)
    end
    local tweenfunc = {}
    local Distance =
        (RealTarget.Position -
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if
            Distance > 3000 and not AutoNextIsland and
                not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and
                not (Name == "Fishman Commando" or Name == "Fishman Warrior")
         then
            pcall(
                function()
                    tween:Cancel()
                    fkwarp = false
                    if
                        game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value ==
                            tostring(GetIsLand(RealTarget))
                     then
                        wait(.1)
                        Com("F_", "TeleportToSpawn")
                    elseif
                        game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value ==
                            tostring(GetIsLand(RealTarget))
                     then
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        wait(0.1)
                        repeat
                            wait()
                        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    else
                        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            if fkwarp == false then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                            end
                            fkwarp = true
                        end
                        wait(.08)
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        repeat
                            wait()
                        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                        wait(.1)
                        Com("F_", "SetSpawnPoint")
                    end
                    wait(0.2)

                    return
                end
            )
        end
    end

    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (RealTarget.Position -
            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /
            Speed,
        Enum.EasingStyle.Linear
    )
    local tweenw, err =
        pcall(
        function()
            tween =
                tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
            tween:Play()
        end
    )

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end

------

function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(
        function()
            tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear),
                {CFrame = Pos}
            )
        end
    )
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

---------

function toTargetP(CFgo)
    if
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
            not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
     then
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
        return
    end
    if
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <=
            150
     then
        pcall(
            function()
                tween:Cancel()

                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

                return
            end
        )
    end
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude /
            325,
        Enum.EasingStyle.Linear
    )
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

--function TP to Boat/Ship
function TweenShip(CFgo)
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude /
            300,
        Enum.EasingStyle.Linear
    )
    tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

function TweenBoat(CFgo)
    if
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
            not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
     then
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
        return
    end
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude /
            325,
        Enum.EasingStyle.Linear
    )
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

--select weapon
function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(0.5)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

--aimbot mastery

spawn(
    function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg, false)
        gg.__namecall =
            newcclosure(
            function(...)
                local method = getnamecallmethod()
                local args = {
                    ...
                }
                if tostring(method) == "FireServer" then
                    if tostring(args[1]) == "RemoteEvent" then
                        if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                            if _G.UseSkill then
                                if type(args[2]) == "vector" then
                                    args[2] = PositionSkillMasteryDevilFruit
                                else
                                    args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                                end
                                return old(unpack(args))
                            end
                        end
                    end
                end
                return old(...)
            end
        )
    end
)
--Equip Gun
spawn(
    function()
        pcall(
            function()
                while task.wait() do
                    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then
                                CurrentEquipGun = v.Name
                            end
                        end
                    end
                end
            end
        )
    end
)

-- [Body Gyro]
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if
                        _G.TeleportIsland or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or
                            _G.CollectAzure or
                            _G.TweenToKitsune or
                            _G.AutoCandy or
                            _G.GhostShip or
                            _G.Ship or
                            _G.SailBoat or
                            _G.Auto_Holy_Torch or
                            _G.FindMirageIsland or
                            _G.TeleportPly or
                            _G.Tweenfruit or
                            _G.AutoFishCrew or
                            _G.AutoShark or
                            _G.AutoCakeV2 or
                            _G.AutoMysticIsland or
                            _G.AutoQuestRace or
                            _G.AutoBuyBoat or
                            _G.dao or
                            _G.AutoMirage or
                            AutoFarmAcient or
                            _G.AutoQuestRace or
                            Auto_Law or
                            _G.AutoAllBoss or
                            AutoTushita or
                            _G.AutoHolyTorch or
                            _G.AutoTerrorshark or
                            _G.farmpiranya or
                            _G.DriveMytic or
                            _G.AutoCakeV2V2 or
                            PirateShip or
                            _G.AutoSeaBeast or
                            _G.AutoNear or
                            _G.BossRaid or
                            _G.GrabChest or
                            AutoCitizen or
                            _G.Ectoplasm or
                            AutoEvoRace or
                            AutoBartilo or
                            AutoFactory or
                            BringChestz or
                            BringFruitz or
                            _G.AutoLevel or
                            _G.Clip2 or
                            AutoFarmNoQuest or
                            _G.AutoBone or
                            AutoFarmSelectMonsterQuest or
                            AutoFarmSelectMonsterNoQuest or
                            _G.AutoBoss or
                            AutoFarmBossQuest or
                            AutoFarmMasGun or
                            AutoFarmMasDevilFruit or
                            AutoFarmSelectArea or
                            AutoSecondSea or
                            AutoThirdSea or
                            AutoDeathStep or
                            AutoSuperhuman or
                            AutoSharkman or
                            AutoElectricClaw or
                            AutoDragonTalon or
                            AutoGodhuman or
                            AutoRengoku or
                            AutoBuddySword or
                            AutoPole or
                            AutoHallowSycthe or
                            AutoCavander or
                            AutoTushita or
                            AutoDarkDagger or
                            _G.CakePrince or
                            _G.AutoElite or
                            AutoRainbowHaki or
                            AutoSaber or
                            AutoFarmKen or
                            AutoKenHop or
                            AutoKenV2 or
                            _G.AutoKillPlayerMelee or
                            _G.AutoKillPlayerGun or
                            _G.AutoKillPlayerFruit or
                            AutoDungeon or
                            AutoNextIsland or
                            AutoAdvanceDungeon or
                            Musketeer or
                            RipIndra or
                            Auto_Serpent_Bow or
                            AutoTorch or
                            AutoSoulGuitar or
                            Auto_Cursed_Dual_Katana or
                            _G.AutoMaterial or
                            Auto_Quest_Yama_1 or
                            Auto_Quest_Yama_2 or
                            Auto_Quest_Yama_3 or
                            Auto_Quest_Tushita_1 or
                            Auto_Quest_Tushita_2 or
                            Auto_Quest_Tushita_3 or
                            _G.Factory or
                            _G.SwanGlasses or
                            AutoBartilo or
                            AutoEvoRace or
                            _G.Ectoplasm
                     then
                        if
                            not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                "BodyClip"
                            )
                         then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name = "BodyClip"
                            Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                            Noclip.Velocity = Vector3.new(0, 0, 0)
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy(

                        )
                    end
                end
            )
        end
    end
)

--No CLip Auto Farm
spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        if
                            _G.TeleportIsland or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or
                                _G.TweenToKitsune or
                                _G.AutoCandy or
                                _G.GhostShip or
                                _G.Ship or
                                _G.SailBoat or
                                _G.Auto_Holy_Torch or
                                _G.Tweenfruit or
                                _G.FindMirageIsland or
                                _G.TeleportPly or
                                _G.AutoFishCrew or
                                _G.AutoShark or
                                _G.AutoMysticIsland or
                                _G.AutoCakeV2 or
                                _G.AutoQuestRace or
                                _G.AutoBuyBoat or
                                _G.dao or
                                AutoFarmAcient or
                                _G.AutoMirage or
                                Auto_Law or
                                _G.AutoQuestRace or
                                _G.AutoAllBoss or
                                _G.AutoHolyTorch or
                                AutoTushita or
                                _G.farmpiranya or
                                _G.AutoTerrorshark or
                                _G.AutoNear or
                                _G.AutoCakeV2V2 or
                                PirateShip or
                                _G.AutoSeaBeast or
                                _G.DriveMytic or
                                _G.BossRaid or
                                _G.GrabChest or
                                AutoCitizen or
                                _G.Ectoplasm or
                                AutoEvoRace or
                                AutoBartilo or
                                AutoFactory or
                                BringChestz or
                                BringFruitz or
                                _G.AutoLevel or
                                _G.Clip2 or
                                AutoFarmNoQuest or
                                _G.AutoBone or
                                AutoFarmSelectMonsterQuest or
                                AutoFarmSelectMonsterNoQuest or
                                _G.AutoBoss or
                                AutoFarmBossQuest or
                                AutoFarmMasGun or
                                AutoFarmMasDevilFruit or
                                AutoFarmSelectArea or
                                AutoSecondSea or
                                AutoThirdSea or
                                AutoDeathStep or
                                AutoSuperhuman or
                                AutoSharkman or
                                AutoElectricClaw or
                                AutoDragonTalon or
                                AutoGodhuman or
                                AutoRengoku or
                                AutoBuddySword or
                                AutoPole or
                                AutoHallowSycthe or
                                AutoCavander or
                                AutoTushita or
                                AutoDarkDagger or
                                _G.CakePrince or
                                _G.AutoElite or
                                AutoRainbowHaki or
                                AutoSaber or
                                AutoFarmKen or
                                AutoKenHop or
                                AutoKenV2 or
                                _G.AutoKillPlayerMelee or
                                _G.AutoKillPlayerGun or
                                _G.AutoKillPlayerFruit or
                                AutoDungeon or
                                AutoNextIsland or
                                AutoAdvanceDungeon or
                                Musketeer or
                                RipIndra or
                                Auto_Serpent_Bow or
                                AutoTorch or
                                AutoSoulGuitar or
                                Auto_Cursed_Dual_Katana or
                                _G.AutoMaterial or
                                Auto_Quest_Yama_1 or
                                Auto_Quest_Yama_2 or
                                Auto_Quest_Yama_3 or
                                Auto_Quest_Tushita_1 or
                                Auto_Quest_Tushita_2 or
                                Auto_Quest_Tushita_3 or
                                _G.Factory or
                                _G.SwanGlasses or
                                AutoBartilo or
                                AutoEvoRace or
                                _G.Ectoplasm
                         then
                            for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)
 ------AttackNoCD

 local plr = game.Players.LocalPlayer
 local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
 local CbFw2 = CbFw[2]

 function GetCurrentBlade()
     local p13 = CbFw2.activeController
     local ret = p13.blades[1]
     if not ret then
         return
     end
     while ret.Parent ~= game.Players.LocalPlayer.Character do
         ret = ret.Parent
     end
     return ret
 end

 function AttackNoCD()
     if not AutoFarmMasDevilFruit or AutoFarmMasGun then
         if not Auto_Raid then
             local AC = CbFw2.activeController
             for i = 1, 1 do
                 local bladehit =
                     require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                     plr.Character,
                     {plr.Character.HumanoidRootPart},
                     60
                 )
                 local cac = {}
                 local hash = {}
                 for k, v in pairs(bladehit) do
                     if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                         table.insert(cac, v.Parent.HumanoidRootPart)
                         hash[v.Parent] = true
                     end
                 end
                 bladehit = cac
                 if #bladehit > 0 then
                     local u8 = debug.getupvalue(AC.attack, 5)
                     local u9 = debug.getupvalue(AC.attack, 6)
                     local u7 = debug.getupvalue(AC.attack, 4)
                     local u10 = debug.getupvalue(AC.attack, 7)
                     local u12 = (u8 * 798405 + u7 * 727595) % u9
                     local u13 = u7 * 798405
                     (function()
                         u12 = (u12 * u9 + u13) % 1099511627776
                         u8 = math.floor(u12 / u9)
                         u7 = u12 - u8 * u9
                     end)()
                     u10 = u10 + 1
                     debug.setupvalue(AC.attack, 5, u8)
                     debug.setupvalue(AC.attack, 6, u9)
                     debug.setupvalue(AC.attack, 4, u7)
                     debug.setupvalue(AC.attack, 7, u10)
                     pcall(
                         function()
                             if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                                 AC.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                                 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                     "weaponChange",
                                     tostring(GetCurrentBlade())
                                 )
                                 game.ReplicatedStorage.Remotes.Validator:FireServer(
                                     math.floor(u12 / 1099511627776 * 16777215),
                                     u10
                                 )
                                 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                     "hit",
                                     bladehit,
                                     i,
                                     ""
                                 )
                             end
                         end
                     )
                 end
             end
         end
     end
 end
---Method Farm
Type1 = 1
spawn(
    function()
        while wait(.1) do
            if Type == 1 then
                Pos = CFrame.new(10, 40, 10)
            elseif Type == 2 then
                Pos = CFrame.new(-30, 10, -30)
            elseif Type == 3 then
                Pos = CFrame.new(10, 10, -40)
            elseif Type == 4 then
                Pos = CFrame.new(-40, 10, 10)
            end
        end
    end
)

spawn(
    function()
        while wait(.1) do
            Type = 1
            wait(1)
            Type = 2
            wait(1)
            Type = 3
            wait(1)
            Type = 4
            wait(1)
        end
    end
)
--auto turn haki
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function BTP(P)
    repeat
        wait(0.5)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
    pcall(
        function()
            if
                (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and
                    not Auto_Raid and
                    game.Players.LocalPlayer.Character.Humanoid.Health > 0
             then
                if NameMon == "FishmanQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                    )
                elseif Mon == "God's Guard" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-4607.82275, 872.54248, -1667.55688)
                    )
                elseif NameMon == "SkyExp1Quest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                    )
                elseif NameMon == "ShipQuest1" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                    )
                elseif NameMon == "ShipQuest2" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                    )
                elseif NameMon == "FrostQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
                    )
                else
                    repeat
                        wait(0.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                        wait(.05)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    until (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                        2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
                    wait()
                end
            end
        end
    )
end

--------------------------------------------------------------------------------------------------------------------------------------------
---Close UI
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0.0627121851, 0, 0.107579626, 0)
ImageButton.Image = "rbxassetid://16131678880"

UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = ImageButton

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(244, 0, 0)), ColorSequenceKeypoint.new(0.32, Color3.fromRGB(146, 255, 251)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(180, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 255, 231))}
UIGradient.Parent = ImageButton

UIAspectRatioConstraint.Parent = ImageButton
UIAspectRatioConstraint.AspectRatio = 0.988


local function HCEGY_fake_script()
local script = Instance.new('LocalScript', UIGradient)

local TweenService = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(script.Parent, tweeninfo, {Rotation = 360})
tween:Play()
end
coroutine.wrap(HCEGY_fake_script)()
local function YTZCAJC_fake_script()
local script = Instance.new('LocalScript', ImageButton)

local UIS = game:GetService('UserInputService')
local frame = script.Parent
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil

local function updateInput(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
        dragToggle = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragToggle then
            updateInput(input)
        end
    end
end)
script.Parent.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.End,false,game)
end)
end
coroutine.wrap(YTZCAJC_fake_script)()
--------------------------------------------------------------------------------------------------------------------------------------------
--Remove Effect
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- Hehe
--------------------------------------------------------------------------------------------------------------------------------------------
--Create Tabs
local Farming = Tabs.Cuttay:AddSection("Farming")
local listfastattack = {"Normal Attack", "Fast Attack", "Super Fast Attack"}

local DropdownDelayAttack =
Tabs.Cuttay:AddDropdown(
"DropdownDelayAttack",
{
    Title = "Select Fast Attack",
    Values = listfastattack,
    Multi = false,
    Default = 1
})
DropdownDelayAttack:SetValue("Fast Attack")
DropdownDelayAttack:OnChanged(function(Value)
_G.FastAttackWildcard_Mode = Value
if _G.FastAttackFaiFao_Mode == "Fast Attack" then
_G.Fast_Delay = 0.17
elseif _G.FastAttackWildcard_Mode == "Normal Attack" then
_G.Fast_Delay = 0.25
elseif _G.FastAttackWildcard_Mode == "Super Fast Attack" then
_G.Fast_Delay = 0.05
end
end)


local DropdownSelectWeapon =
Tabs.Main:AddDropdown(
"DropdownSelectWeapon",
{
    Title = "Weapon",
    Values = {"Melee", "Sword", "Blox Fruit"},
    Multi = false,
    Default = 1
}
)
DropdownSelectWeapon:SetValue("Melee")
DropdownSelectWeapon:OnChanged(
function(Value)
    ChooseWeapon = Value
end
)
task.spawn(
function()
    while wait() do
        pcall(
            function()
                if ChooseWeapon == "Melee" then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end
        )
    end
end
)
local ToggleLevel = Tabs.Cuttay:AddToggle("ToggleLevel", {Title = "Cuttay/Kaitan Account Farming", Default = false})
ToggleLevel:OnChanged(
    function(Value)
        _G.AutoLevel = Value
    end
)
Options.ToggleLevel:SetValue(false)
spawn(
    function()
        while task.wait() do
            if _G.AutoLevel then
                pcall(
                    function()
                        CheckLevel()
                        if
                            not string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                NameMon
                            ) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude >
                                        2500
                                 then
                                    BTP(CFrameQ)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <
                                        2500
                                 then
                                    Tween(CFrameQ)
                                end
                            else
                                Tween(CFrameQ)
                            end
                            if
                                (CFrameQ.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    5
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    QuestLv
                                )
                            end
                        elseif
                            string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                NameMon
                            ) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    if v.Name == Ms then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCD()
                                            bringmob = true
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until --Click
                                        not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or
                                            not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
                                            game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        bringmob = false
                                    end
                                end
                            end
                            for i, v in pairs(
                                game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()
                            ) do
                                if string.find(v.Name, NameMon) then
                                    if
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >=
                                            10
                                     then
                                        Tween(v.CFrame * CFrame.new(posX, posY, posZ))
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
