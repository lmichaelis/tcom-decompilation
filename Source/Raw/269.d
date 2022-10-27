func int C_NPCISGATEGUARD(var C_NPC SLF) {
    if (NPC_ISINSTATE(SLF, 0xb3f7)) {
        return TRUE;
    };
    return FALSE;
}

