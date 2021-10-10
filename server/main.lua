RegisterCommand('gotoclient', function(source, args, rawCommand) 
	if (source == 0 or source == nil) then 
		return print('Command only allowed in game.') -- This is console, we don't wan't to use this on console, the code will stop running from here. We are using "return" to stop code.
	end

    local value = 'Hello client-side'
    TriggerClientEvent('SendToClient', source, value)
    
    -- This is the same of doing this: TriggerClientEvent('SendToServer', source, 'Hello client-side')
end, false) -- Command will be restricted?

-- Creating an event to receive a text to get printed.
RegisterServerEvent('SendToServer', function(text)
    print(text) -- Will get printed on server console
end)
