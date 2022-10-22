function QBCore.Functions.Notify(text, textype, length)
    if textype == "primary" then textype = "inform" end
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        local ttype = textype or 'inform'
        local length = length or 3000
        exports['okokNotify']:Alert("🔔  Notification  🔔", text, length, "info")
    else
        local ttype = textype or 'inform'
        local ttext = text.text or 'Placeholder'
        local length = length or 5000
        exports['okokNotify']:Alert("🔔  Notification  🔔", text, length, "info")
    end
end
