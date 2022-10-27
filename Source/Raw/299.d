func int C_NPCBELONGSTOWOLFSLAIR(var C_NPC SLF) {
    if ((SLF.GUILD) == (GIL_DJG)) {
        return TRUE;
    };
    return FALSE;
}

func int C_NPCBELONGSTOCITY(var C_NPC SLF) {
    if (((((((SLF.GUILD) == (GIL_VLK)) || ((SLF.GUILD) == (GIL_MIL))) || ((SLF.GUILD) == (GIL_PAL))) || ((SLF.GUILD) == (GIL_KDF))) || (((SLF.GUILD) == (GIL_NOV)) && ((NPC_HASITEMS(SLF, 0x8479)) >= (1)))) || ((SLF.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return FALSE;
}

func int C_NPCBELONGSTOMONASTERY(var C_NPC SLF) {
    if (((SLF.GUILD) == (GIL_KDW)) || (((SLF.GUILD) == (GIL_NOV)) && ((NPC_HASITEMS(SLF, 0x8b0a)) >= (1)))) {
        return TRUE;
    };
    return FALSE;
}

func int C_NPCBELONGSTOFARMS(var C_NPC SLF) {
    if ((SLF.GUILD) == (GIL_BAU)) {
        return TRUE;
    };
    return FALSE;
}

