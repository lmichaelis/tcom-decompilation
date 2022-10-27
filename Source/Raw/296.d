func int C_WANTTOFLEE(var C_NPC SLF, var C_NPC OTH) {
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
        if (((((((((((HLP_ISITEM(ARMOR, 0x8ae2)) || (HLP_ISITEM(ARMOR, 0x8ae3))) || (HLP_ISITEM(ARMOR, 0x8ae4))) || (HLP_ISITEM(ARMOR, 0x8ae5))) || (HLP_ISITEM(ARMOR, 0x8ae6))) || (HLP_ISITEM(ARMOR, 0x8ae7))) || (HLP_ISITEM(ARMOR, 0x8ae8))) || (HLP_ISITEM(ARMOR, 0x8ae9))) || (HLP_ISITEM(ARMOR, 0x8aea))) || (HLP_ISITEM(ARMOR, 0x8aeb))) || (HLP_ISITEM(ARMOR, 0x8aec))) {
            return TRUE;
        };
        if (HLP_ISITEM(ARMOR, 0x8afe)) {
            return TRUE;
        };
    };
    return FALSE;
}

instance C_WANTTOFLEE.ARMOR(C_ITEM)
