CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            TriggerServerEvent('QBCore:UpdatePlayer')
            Wait((1000 * 60) * QBCore.Config.UpdateInterval)
        else
            Wait(1000) -- 未ログイン時は1秒待機
        end
    end
end)

CreateThread(function()
    while true do
        if not LocalPlayer.state.isLoggedIn then
            Wait(5000)
            -- continue相当 (goto使用 or 構造変更)
        else
            local meta = QBCore.PlayerData.metadata
            if (meta['hunger'] <= 0 or meta['thirst'] <= 0)
                and not meta['isdead']
                and not meta['inlaststand'] then
                local ped = PlayerPedId()
                SetEntityHealth(ped, GetEntityHealth(ped) - math.random(5, 10))
            end
            Wait(QBCore.Config.StatusInterval)
        end
    end
end)
