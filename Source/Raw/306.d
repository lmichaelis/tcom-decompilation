func int B_GETTOTALPETZCOUNTER(var C_NPC SLF) {
    if (C_NPCBELONGSTOWOLFSLAIR(SLF)) {
        return (((PETZCOUNTER_WOLFSLAIR_MURDER) + (PETZCOUNTER_WOLFSLAIR_THEFT)) + (PETZCOUNTER_WOLFSLAIR_ATTACK)) + (PETZCOUNTER_WOLFSLAIR_SHEEPKILLER);
    };
    if (C_NPCBELONGSTOCITY(SLF)) {
        return (((PETZCOUNTER_CITY_MURDER) + (PETZCOUNTER_CITY_THEFT)) + (PETZCOUNTER_CITY_ATTACK)) + (PETZCOUNTER_CITY_SHEEPKILLER);
    };
    if (C_NPCBELONGSTOMONASTERY(SLF)) {
        return (((PETZCOUNTER_MONASTERY_MURDER) + (PETZCOUNTER_MONASTERY_THEFT)) + (PETZCOUNTER_MONASTERY_ATTACK)) + (PETZCOUNTER_MONASTERY_SHEEPKILLER);
    };
    if (C_NPCBELONGSTOFARMS(SLF)) {
        return (((PETZCOUNTER_FARMS_MURDER) + (PETZCOUNTER_FARMS_THEFT)) + (PETZCOUNTER_FARMS_ATTACK)) + (PETZCOUNTER_FARMS_SHEEPKILLER);
    };
    return 0;
}

