func int C_REFUSETALK(var C_NPC SLF, var C_NPC OTH) {
    if ((((NPC_REFUSETALK(SLF)) == (TRUE)) && (C_NPCISGATEGUARD(SLF))) && ((SLF.AIVAR[12]) == (GP_NONE))) {
        return TRUE;
    };
    return FALSE;
}

