func int C_NPCISGATEGUARD(var C_NPC SLF) {
    if (NPC_ISINSTATE(SLF, 46071)) {
        return TRUE;
    };
    return FALSE;
}

