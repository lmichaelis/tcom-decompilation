func int B_GETPLAYERCRIME(var C_NPC SLF) {
    if ((SLF.AIVAR[1]) <= (CRIME_ATTACK)) {
        if ((SLF.AIVAR[2]) < ((WLD_GETDAY()) - (2))) {
            return CRIME_NONE;
        };
    };
    if ((SLF.AIVAR[46]) < (B_GETCURRENTABSOLUTIONLEVEL(SLF))) {
        return CRIME_NONE;
    };
    return SLF.AIVAR[1];
}

