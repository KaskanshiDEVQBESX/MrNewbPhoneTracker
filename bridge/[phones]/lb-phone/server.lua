if Config.Phone ~= "lbphone" then return print("lbphone SS Off") end

function getPlayerCoords(TargetSource)
    if not TargetSource then return nil end

    local TargetPed = GetPlayerPed(TargetSource)
    local coords = GetEntityCoords(TargetPed)
    return coords
end

function getPlayerSource(phoneNumber)
	if not phoneNumber then return nil end
    local TargetSource = exports["lb-phone"]:GetSourceFromNumber(phoneNumber)
    if not TargetSource then return nil end
    return TargetSource
end