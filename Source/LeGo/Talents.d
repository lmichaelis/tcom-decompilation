const int AIV_IDENTIFIER = 89;
var int NPCUNIQUEIDCOUNTER = 0;
func int NPC_GETID(var C_NPC SLF) {
    if (!(SLF.AIVAR[89])) {
        NPCUNIQUEIDCOUNTER = (NPCUNIQUEIDCOUNTER) + (1);
        SLF.AIVAR[89] = NPCUNIQUEIDCOUNTER;
    };
    return SLF.AIVAR[89];
}

func int NPCLIST_FINDBYID(var int LIST, var int TARGETID) {
    WHILE(LIST);
    L = _^(LIST);
    if (L.DATA) {
        NPC = _^(L.DATA);
        if ((NPC.AIVAR[89]) == (TARGETID)) {
            return L.DATA;
        };
    };
    LIST = L.NEXT;
    END;
    return 0;
}

instance NPCLIST_FINDBYID.L(ZCLISTSORT)
instance NPCLIST_FINDBYID.NPC(C_NPC)
func int NPC_FINDBYID(var int ID) {
    if (MEM_WORLD.VOBLIST_NPCS) {
        return NPCLIST_FINDBYID(MEM_WORLD.VOBLIST_NPCS, ID);
    };
    return 0;
}

