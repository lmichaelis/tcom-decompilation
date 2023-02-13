func int C_WANTTOFLEE(var C_NPC SLF, var C_NPC OTH) {
    var C_ITEM ARMOR;
    if ((SLF.NPCTYPE) == (NPCTYPE_FRIEND)) {
        return FALSE;
    };
    if ((SLF.AIVAR[15]) == (TRUE)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SLF)) {
        return FALSE;
    };
    if (NPC_HASEQUIPPEDARMOR(SLF)) {
        ARMOR = NPC_GETEQUIPPEDARMOR(SLF);
        if (((((((((((HLP_ISITEM(ARMOR, 35554)) || (HLP_ISITEM(ARMOR, 35555))) || (HLP_ISITEM(ARMOR, 35556))) || (HLP_ISITEM(ARMOR, 35557))) || (HLP_ISITEM(ARMOR, 35558))) || (HLP_ISITEM(ARMOR, 35559))) || (HLP_ISITEM(ARMOR, 35560))) || (HLP_ISITEM(ARMOR, 35561))) || (HLP_ISITEM(ARMOR, 35562))) || (HLP_ISITEM(ARMOR, 35563))) || (HLP_ISITEM(ARMOR, 35564))) {
            return TRUE;
        };
        if (HLP_ISITEM(ARMOR, 35582)) {
            return TRUE;
        };
    };
    return FALSE;
}

