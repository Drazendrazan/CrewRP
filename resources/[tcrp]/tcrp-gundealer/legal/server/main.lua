ESX = nil

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

RegisterServerEvent('tcrp-gundealer:giveWeapon')
AddEventHandler('tcrp-gundealer:giveWeapon', function(recId)
    _source = source
    local canBuy = CheckTime(recId, _source)
    if canBuy then
        local xPlayer = ESX.GetPlayerFromId(recId)
        xPlayer.addWeapon('weapon_pistol', Config.AmmoGiven)
        UpdateTime(recId)
        TriggerClientEvent('tcrp:displayGeneral', _source, "You gave out a pistol.")
    end
end)

function CheckTime(recId, sender)
    local steamid = GetPlayerIdentifier( recId, Config.IdentifierUsed ) 
    
    local result = MySQL.Sync.fetchAll("SELECT * FROM USER_LICENSES WHERE owner= @id AND type = 'weapon'", {
        ['@id'] = steamid
        })
        if result[1] ~= nil  then
            time = result[1].lastPurchase
            cooldownTime = time + Config.Cooldown
           if os.time() >= cooldownTime then
               return true
           else
              
              local timeLeft = cooldownTime - os.time()
              print(timeLeft)
              local day = math.floor(timeLeft / 60 / 60 / 24)
              local hour = math.floor(
                (timeLeft - (day * 24 * 60 * 60)) / 60 / 60
                ) 
              local min = math.floor(
                (timeLeft - (day * 24 * 60 * 60) - (hour * 60 * 60) ) / 60 
              )
              TriggerClientEvent('tcrp:displayGeneral', _source, "Buyer cannot buy another gun for another :" ..  day .. " days, " .. hour .. " hours " .. "and " .. min .. " minutes")
              return false
            end
        else
         TriggerClientEvent('tcrp:displayGeneral', sender, "Buyer does not have a weapons license.")
        end
end
function UpdateTime(recId)
    local id = GetPlayerIdentifier(recId, Config.IdentifierUsed)
    MySQL.Async.execute("UPDATE USER_LICENSES SET lastPurchase = @time WHERE OWNER = @id and TYPE = 'weapon'", {
        ['@id'] = id,
        ['@time'] = os.time()
    }
    )

end

