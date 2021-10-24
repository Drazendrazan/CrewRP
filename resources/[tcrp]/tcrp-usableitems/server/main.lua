ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local xPlayer = ESX.GetPlayerFromId(source)

---------------------------------------------------------------------------
-- Delete Spikestrips --
---------------------------------------------------------------------------
RegisterServerEvent("usableitems:TriggerDeleteSpikes")
AddEventHandler("usableitems:TriggerDeleteSpikes", function(netid)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent("usableitems:DeleteSpikes", source, netid)
    xPlayer.addInventoryItem('spikestrips', 0.5)
end)

---------------------------------------------------------------------------
-- Delete Gurney --
---------------------------------------------------------------------------
RegisterServerEvent("usableitems:TriggerDeleteGurney")
AddEventHandler("usableitems:TriggerDeleteGurney", function(netid)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent("usableitems:DeleteGurney", source, netid)
    xPlayer.addInventoryItem('gurney', 1)
end)

---------------------------------------------------------------------------
-- Usable Items --
---------------------------------------------------------------------------
ESX.RegisterUsableItem('spikestrips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    xPlayer.removeInventoryItem('spikestrips', 1)
    TriggerClientEvent("usableitems:SpawnSpikes", src)
    TriggerClientEvent('mythic_notify:client:SendErrorAlert', source, { text = "Press Z to Pick Up Spike Strips"})
end)

ESX.RegisterUsableItem('lighter', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    TriggerClientEvent("usableitems:lighter", source)
end)

ESX.RegisterUsableItem('gurney', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    xPlayer.removeInventoryItem('gurney', 1)
    TriggerClientEvent("usableitems:SpawnGurney", src)
    TriggerClientEvent('mythic_notify:client:SendErrorAlert', source, { text = "Press Z to Pick Up Gurneys"})
end)

ESX.RegisterUsableItem('alive_chicken', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    xPlayer.removeInventoryItem('alive_chicken', 1)
    TriggerClientEvent("usableitems:chicken", src)
end)

ESX.RegisterUsableItem('gastank', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    xPlayer.removeInventoryItem('gastank', 1)
    TriggerClientEvent("usableitems:SpawnGastank", source)
end)

ESX.RegisterUsableItem('wheelchair', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
    local src = source

    xPlayer.removeInventoryItem('wheelchair', 1)
    TriggerClientEvent("usableitems:SpawnWheelchair", source)
end)