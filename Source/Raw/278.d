func int C_NPCISDOWN(var C_NPC SLF) {
    if (((NPC_ISINSTATE(SLF, 0xf0a3)) || (NPC_ISINSTATE(SLF, 0xab69))) || (NPC_ISDEAD(SLF))) {
        return TRUE;
    };
    return FALSE;
}

