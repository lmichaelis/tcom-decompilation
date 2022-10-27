func int C_NPCISEVIL(var C_NPC SLF) {
    if (((((((((((SLF.GUILD) == (GIL_KM_GARGOYLE)) || ((SLF.GUILD) == (GIL_ORC))) || ((SLF.GUILD) == (GIL_DRACONIAN))) || ((SLF.GUILD) == (GIL_DEMON))) || (C_NPCISUNDEAD(SLF))) || ((SLF.AIVAR[43]) == (ID_WOLF_CURSED))) || ((SLF.AIVAR[43]) == (ID_GOLEMCMENTARY))) || ((SLF.AIVAR[43]) == (ID_GIANTBUG_CURSED))) || ((SLF.AIVAR[43]) == (ID_TROLL_CURSED))) || ((SLF.AIVAR[43]) == (ID_SNAPPER_CURSED))) {
        return TRUE;
    };
    return FALSE;
}

