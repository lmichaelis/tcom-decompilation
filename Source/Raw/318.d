func int C_NPCHASAMBIENTNEWS(var C_NPC SLF) {
    if ((SLF.NPCTYPE) == (NPCTYPE_AMBIENT)) {
        if ((SLF.AIVAR[58]) == (TRUE)) {
            return FALSE;
        };
        if ((B_GETPLAYERCRIME(SLF)) == (CRIME_NONE)) {
            return FALSE;
        };
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

