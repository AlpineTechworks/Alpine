local function load(src)
  loadstring(game:HttpGet(src, true))()
end

local succ, err = pcall(load,'https://raw.githubusercontent.com/ErzaSoftware/ErzaHub/main/Source/Script.lua');
if succ then
  local Notification = loadstring(game:HttpGet('https://raw.githubusercontent.com/ErzaSoftware/ErzaHub/main/Modules/Notification.lua', true))()
  Notification:Send('Erza Succesfully Loaded', 'Erza booted and is ready to use.', 'SConnected')
elseif not succ then
  local Notification = loadstring(game:HttpGet('https://raw.githubusercontent.com/ErzaSoftware/ErzaHub/main/Modules/Notification.lua', true))()
  Notification:Send('Loading Error', err, 'sError')
end
