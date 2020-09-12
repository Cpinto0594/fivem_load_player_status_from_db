TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('load_player_status:getStatus')
AddEventHandler('load_player_status:getStatus', function(statusName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local status  = xPlayer.get('status')

	for i=1, #status, 1 do
		if status[i].name == statusName then
			TriggerClientEvent('load_player_status:setStatus', source, statusName, status[i])
			break
		end
	end
end)