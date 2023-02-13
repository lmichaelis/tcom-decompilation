func int B_GETGREATESTPETZCRIME(var C_NPC SLF) {
    if (C_NPCBELONGSTOWOLFSLAIR(SLF)) {
        if ((PETZCOUNTER_WOLFSLAIR_MURDER) > (0)) {
            return CRIME_MURDER;
        };
        if ((PETZCOUNTER_WOLFSLAIR_THEFT) > (0)) {
            return CRIME_THEFT;
        };
        if ((PETZCOUNTER_WOLFSLAIR_ATTACK) > (0)) {
            return CRIME_ATTACK;
        };
        if ((PETZCOUNTER_WOLFSLAIR_SHEEPKILLER) > (0)) {
            return CRIME_SHEEPKILLER;
        };
    };
    if (C_NPCBELONGSTOCITY(SLF)) {
        if ((PETZCOUNTER_CITY_MURDER) > (0)) {
            return CRIME_MURDER;
        };
        if ((PETZCOUNTER_CITY_THEFT) > (0)) {
            return CRIME_THEFT;
        };
        if ((PETZCOUNTER_CITY_ATTACK) > (0)) {
            return CRIME_ATTACK;
        };
        if ((PETZCOUNTER_CITY_SHEEPKILLER) > (0)) {
            return CRIME_SHEEPKILLER;
        };
    };
    if (C_NPCBELONGSTOMONASTERY(SLF)) {
        if ((PETZCOUNTER_MONASTERY_MURDER) > (0)) {
            return CRIME_MURDER;
        };
        if ((PETZCOUNTER_MONASTERY_THEFT) > (0)) {
            return CRIME_THEFT;
        };
        if ((PETZCOUNTER_MONASTERY_ATTACK) > (0)) {
            return CRIME_ATTACK;
        };
        if ((PETZCOUNTER_MONASTERY_SHEEPKILLER) > (0)) {
            return CRIME_SHEEPKILLER;
        };
    };
    if (C_NPCBELONGSTOFARMS(SLF)) {
        if ((PETZCOUNTER_FARMS_MURDER) > (0)) {
            return CRIME_MURDER;
        };
        if ((PETZCOUNTER_FARMS_THEFT) > (0)) {
            return CRIME_THEFT;
        };
        if ((PETZCOUNTER_FARMS_ATTACK) > (0)) {
            return CRIME_ATTACK;
        };
        if ((PETZCOUNTER_FARMS_SHEEPKILLER) > (0)) {
            return CRIME_SHEEPKILLER;
        };
    };
    return CRIME_NONE;
}

