function(allstates, event, unit)
    if (event == 'OPTIONS') then
        return false
    end
    if (event == 'UNIT_AURA' and unit ~= 'target') then
        return false
    end

    if (not UnitExists('target') or not UnitIsEnemy("player", "target") or UnitIsDead('target') or UnitIsPlayer('target')) then
        -- In case we don't have target or target is dead or target is player or friend we just
        -- remove all auras
        for _, state in pairs(allstates) do
            state.show = false
            state.changed = true
        end
        return true
    end
    
    local target_GUID = UnitGUID('target')
    if not target_GUID then
        return false
    end
    
    local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", target_GUID);
    if not npc_id then
        return false
    end
    
    npc_id = tonumber(npc_id)
    if not npc_id then
        return false
    end
    
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
        local state = {
            show = false,
            changed = true,
            tooltip = effect.tooltip,
            icon = effect.icon
        }
        local name = WA_GetUnitAura('target', effect.aura, effect.filter)
        if name then 
            state.show = true
        end
        
        allstates[effect.id] = state
    end
    return true
end