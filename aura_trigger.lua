function(allstates, event, unit)
    if (event == 'OPTIONS') then
        return false
    end
    if (event == 'UNIT_AURA' and unit ~= 'target') then
        return false
    end
    
    if (event == 'PLAYER_TARGET_CHANGED') then
        for _, state in pairs(allstates) do
            state.show = false
            state.changed = true
        end
        
        if (not UnitExists('target') or UnitIsPlayer('target')) then
            return true
        end
    end
    
    local target_GUID = UnitGUID('target')
    local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", target_GUID);

    if not npc_id then
        -- Some GUID can't be parsed
        return false
    end
    
    npc_id = tonumber(npc_id)
    
    local effects = aura_env.mobs[npc_id]
    if not effects then 
        -- Reset all states and disable all effects
        for _, state in pairs(allstates) do
            state.show = false
            state.changed = true
        end
        return true
    end
    for _, effect in ipairs(effects) do
        local name = WA_GetUnitDebuff('target', effect.aura)
        if not name then
            name = WA_GetUnitBuff('target', effect.aura)
        end
        
        local state = {
            show = false,
            changed = true,
            tooltip = effect.tooltip,
            icon = effect.icon
        }
        if name then 
            state.show = true
        end
        
        allstates[effect.id] = state
    end
    return true
end