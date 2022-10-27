func int C_WANTTOATTACKMURDER(var C_NPC SLF, var C_NPC OTH) {
    if ((((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_STRF))) || ((SLF.GUILD) == (GIL_BDT))) {
        return FALSE;
    };
    if ((SLF.AIVAR[54]) == (TRUE)) {
        return FALSE;
    };
    if ((NPC_ISPLAYER(OTH)) && ((SLF.NPCTYPE) == (NPCTYPE_FRIEND))) {
        return FALSE;
    };
    if (C_NPCHASATTACKREASONTOKILL(OTH)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SLF)) {
        return FALSE;
    };
    return TRUE;
}

