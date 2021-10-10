RegisterCommand('gotoserver', function(source, args, rawCommand) 
    local value = 'Hello server-side'
    TriggerServerEvent('SendToServer', value)

    -- This is the same of doing this: TriggerServerEvent('SendToServer', 'Hello server-side')
end, false) -- Command will be restricted?

-- Creating an event to receive a text to get printed.
RegisterNetEvent('SendToClient', function(text)
    print(text) -- Will get printed on client console
end)

--[[ We don't need to add AddEventHandler, that's useless for what we are doing here.
    Small example:

    RegisterNetEvent('SendToClient')
    AddEventHandler('SendToClient', function(text)
        print(text) -- Will get printed on client console
    end)

    -- This code above will work too, but is useless.
]]
