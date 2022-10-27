func int C_WANTTORANSACK(var C_NPC SLF) {
    if (((SLF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTHER))) {
        return FALSE;
    };
    if (((((((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_ORC))) || ((SLF.GUILD) == (GIL_PAL))) || ((SLF.GUILD) == (GIL_KDF))) || ((SLF.GUILD) == (GIL_NOV))) || ((SLF.GUILD) == (GIL_KDW))) {
        return FALSE;
    };
    return TRUE;
}

