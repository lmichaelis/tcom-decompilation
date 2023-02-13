func int C_NPCBELONGSTOWOLFSLAIR(var C_NPC SLF) {
    if ((SLF.GUILD) == (GIL_DJG)) {
        return TRUE;
    };
    return FALSE;
}

func int C_NPCBELONGSTOMONASTERY(var C_NPC SLF) {
    if (((SLF.GUILD) == (GIL_KDW)) || (((SLF.GUILD) == (GIL_NOV)) && ((NPC_HASITEMS(SLF, 35594)) >= (1)))) {
        return TRUE;
    };
    return FALSE;
}

