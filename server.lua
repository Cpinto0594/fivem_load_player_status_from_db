TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('load_player_status:getStatus')
AddEventHandler('load_player_status:getStatus', function(playerId, statusName)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	local status  = xPlayer.get('status')

	for i=1, #status, 1 do
		if status[i].name == statusName then
			TriggerClientEvent('load_player_status:setStatus', playerId, status[i])
			break
		end
	end
end)