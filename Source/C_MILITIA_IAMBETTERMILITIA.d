func int C_MILITIA_IAMBETTERMILITIA(var C_NPC SLF) {
    var C_ITEM ARMOR;
    if (NPC_HASEQUIPPEDARMOR(SLF)) {
        ARMOR = NPC_GETEQUIPPEDARMOR(SLF);
        if (((HLP_ISITEM(ARMOR, 35488)) || (HLP_ISITEM(ARMOR, 35489))) || (HLP_ISITEM(ARMOR, 35490))) {
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

func int C_MILITIA_IAMMASTERCROSSBOWMAN(var C_NPC SLF) {
    var C_ITEM ARMOR;
    if (NPC_HASEQUIPPEDARMOR(SLF)) {
        ARMOR = NPC_GETEQUIPPEDARMOR(SLF);
        if (((HLP_ISITEM(ARMOR, 35498)) || (HLP_ISITEM(ARMOR, 35499))) || (HLP_ISITEM(ARMOR, 35500))) {
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

func int C_MILITIA_IAMMASTERFIGHTER(var C_NPC SLF) {
    var C_ITEM ARMOR;
    if (NPC_HASEQUIPPEDARMOR(SLF)) {
        ARMOR = NPC_GETEQUIPPEDARMOR(SLF);
        if (((HLP_ISITEM(ARMOR, 35506)) || (HLP_ISITEM(ARMOR, 35507))) || (HLP_ISITEM(ARMOR, 35508))) {
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

