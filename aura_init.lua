local env = aura_env

local effects = {
    ['fire-reflect'] = { id = 'fire-reflect', icon = 135806 },
    ['ice'] = { id = 'll', icon = '' },
    ['arcane-reflect'] = { id = 'arcane-reflect', icon = 135733 }
}

env.mobs = {
    [5603] = { 
        effects['fire-reflect'], 
        effects['arcane-reflect'] 
    },
    [5597] = { effects['ice'] }
}