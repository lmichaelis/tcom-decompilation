func int C_WANTTOATTACKTHIEF(var C_NPC SLF, var C_NPC OTH) {
    if (((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_STRF))) {
        return FALSE;
    };
    if ((SLF.AIVAR[55]) == (TRUE)) {
        return FALSE;
    };
    if ((SLF.AIVAR[0]) == (FIGHT_LOST)) {
        return FALSE;
    };
    if ((NPC_ISPLAYER(OTH)) && ((SLF.NPCTYPE) == (NPCTYPE_FRIEND))) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SLF)) {
        return FALSE;
    };
    return TRUE;
}

