func int C_NPCISHERO(var C_NPC SLF) {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(HER))) {
        return TRUE;
    };
    return FALSE;
}

instance C_NPCISHERO.HER(C_NPC)
