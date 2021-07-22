local effects = {
    ['anubisat-fire-reflect'] = { id = 'anubisat-fire-reflect', filter = 'HELPFUL', aura = 13022, icon = 135806 },
    ['anubisat-frost-reflect'] = { id = 'anubisat-frost-reflect', filter = 'HELPFUL', aura = 19595, icon = 135843 },
    ['anubisat-arcane-reflect'] = { id = 'anubisat-arcane-reflect', filter = 'HELPFUL', aura = 13022, icon = 135733 }, 
    ['anubisat-shadow-reflect'] = { id = 'anubisat-shadow-reflect', filter = 'HELPFUL', aura = 19595, icon = 135945 },
    --
    ['osiris-arcane-vulnerability'] = { id = 'osiris-arcane-vulnerability', filter = 'HARMFUL', aura = 25181, icon = 136096 },
    ['osiris-frost-vulnerability'] = { id = 'osiris-frost-vulnerability', filter = 'HARMFUL', aura = 25178, icon = 135846 },
    ['osiris-shadow-vulnerability'] = { id = 'osiris-shadow-vulnerability', filter = 'HARMFUL', aura = 25183, icon = 136197 },
    ['osiris-fire-vulnerability'] = { id = 'osiris-fire-vulnerability', filter = 'HARMFUL', aura = 25177, icon = 135812 },
    ['osiris-nature-vulnerability'] = { id = 'osiris-nature-vulnerability', filter = 'HARMFUL', aura = 25180, icon = 136048 },
    --
    ['dc-arcane-vulnerability'] = { id = 'dc-arcane-vulnerability', filter = 'HELPFUL', aura = 22281, icon = 136096 },
    ['dc-frost-vulnerability'] = { id = 'dc-frost-vulnerability', filter = 'HELPFUL', aura = 22278, icon = 135846 },
    ['dc-shadow-vulnerability'] = { id = 'dc-shadow-vulnerability', filter = 'HELPFUL', aura = 22279, icon = 136197 },
    ['dc-fire-vulnerability'] = { id = 'dc-fire-vulnerability', filter = 'HELPFUL', aura = 22277, icon = 135812 },
    ['dc-nature-vulnerability'] = { id = 'dc-nature-vulnerability', filter = 'HELPFUL', aura = 22280, icon = 136048 },
    --
    ['spell-reflect'] = { id = 'spell-reflect', filter = 'HELPFUL', aura = 33961, icon = 136222 }
}

local anubisat_effects = {
    effects['anubisat-fire-reflect'], 
    effects['anubisat-arcane-reflect'], 
    effects['anubisat-frost-reflect'], 
    effects['anubisat-shadow-reflect'] 
}

local osiris_effects = {
    effects['osiris-arcane-vulnerability'], 
    effects['osiris-frost-vulnerability'], 
    effects['osiris-shadow-vulnerability'], 
    effects['osiris-fire-vulnerability'], 
    effects['osiris-nature-vulnerability']
}

local dragons_and_chromaggus_effects = {
    effects['dc-arcane-vulnerability'], 
    effects['dc-frost-vulnerability'], 
    effects['dc-shadow-vulnerability'], 
    effects['dc-fire-vulnerability'], 
    effects['dc-nature-vulnerability']
}

local sethekk_initiate_effects = {
    effects['spell-reflect']
}

aura_env.mobs = {
    -- Anubistats
    [15277] = anubisat_effects,
    [12180] = anubisat_effects,
    [15264] = anubisat_effects,
    [15311] = anubisat_effects,
    [15355] = anubisat_effects,
    [15743] = anubisat_effects,
    [15754] = anubisat_effects,
    [15810] = anubisat_effects,
    [15758] = anubisat_effects,
    [15807] = anubisat_effects,
    -- Osiris
    [15339] = osiris_effects,
    -- Dragons and Chromaggus
    [12460] = dragons_and_chromaggus_effects,
    [12461] = dragons_and_chromaggus_effects,
    [14020] = dragons_and_chromaggus_effects,
    -- Sethekk Initiate
    [18318] = sethekk_initiate_effects
}