func int B_GETCURRENTABSOLUTIONLEVEL(var C_NPC SLF) {
    if (C_NPCBELONGSTOWOLFSLAIR(SLF)) {
        return ABSOLUTIONLEVEL_WOLFSLAIR;
    };
    if (C_NPCBELONGSTOCITY(SLF)) {
        return ABSOLUTIONLEVEL_CITY;
    };
    if (C_NPCBELONGSTOMONASTERY(SLF)) {
        return ABSOLUTIONLEVEL_MONASTERY;
    };
    if (C_NPCBELONGSTOFARMS(SLF)) {
        return ABSOLUTIONLEVEL_FARMS;
    };
    return 0;
}
