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
    
    local env = aura_env
    
    local targetGUID = UnitGUID('target')
    local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", targetGUID);
    
    print('npc_buid:'..targetGUID)
    
    
    npc_id = tonumber(npc_id)
    
    print('npc:'..npc_id)
    
    
    local effects = env.mobs[npc_id]
    if not effects then 
        for _, state in pairs(allstates) do
            state.show = false
            state.changed = true
        end
        
        return true
    end
    
    print('testing')
    
    for _, effect in ipairs(effects) do
        print('matching:'..effect.id) 
        
        allstates[effect.id] = {
            show = true,
            changed = true,
            tooltip = effect.tooltip,
            icon = effect.icon
        }
    end
    return true
end