var int NPCUNIQUEIDCOUNTER;
func int NPC_GETID(var C_NPC SLF) {
    if (!(SLF.AIVAR[89])) {
        NPCUNIQUEIDCOUNTER = (NPCUNIQUEIDCOUNTER) + (1);
        SLF.AIVAR[89] = NPCUNIQUEIDCOUNTER;
    };
    return SLF.AIVAR[89];
}

func int NPC_FINDBYID(var int ID) {
    if (MEM_WORLD.VOBLIST_NPCS) {
        return NPCLIST_FINDBYID(MEM_WORLD.VOBLIST_NPCS, ID);
    };
    return 0;
}

