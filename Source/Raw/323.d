func int C_WANTTOREACTTOSNEAKER(var C_NPC SLF, var C_NPC OTH) {
    if ((NPC_GETDISTTONPC(SLF, OTH)) > (700)) {
        return FALSE;
    };
    if ((((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_STRF))) || ((SLF.GUILD) == (GIL_BDT))) {
        return FALSE;
    };
    if (((SLF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTH))) {
        return FALSE;
    };
    if ((NPC_GETATTITUDE(SLF, OTH)) == (ATT_FRIENDLY)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return FALSE;
    };
    return TRUE;
}

