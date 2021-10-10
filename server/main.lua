RegisterCommand('gotoclient', function(source, args, rawCommand) 
    local value = 'Hello client-side'
    TriggerClientEvent('SendToClient', source, value)
    
    -- This is the same of doing this: TriggerClientEvent('SendToServer', source, 'Hello client-side')
end, false) -- Command will be restricted?

-- Creating an event to receive a text to get printed.
RegisterServerEvent('SendToServer', function(text)
    print(text) -- Will get printed on server console
end)