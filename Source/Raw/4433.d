func void PART6_MEETFIRSTORC_APPLY() {
    if (((BENGARFARM_ORCENCOUNTER) == (1)) && ((NPC_GETDISTTONPC(HERO, ORCWARRIOR_PART6)) <= (1000))) {
        PRINTD("Spotka³eœ Orka");
        FF_REMOVE(0x16691);
        BENGARFARM_ORCENCOUNTER = 2;
    };
    PRINTD("Sprawdzam czy spotka³eœ orka");
}

func void PART6_MEETFIRSTORC_FUNCTION() {
    NPC = HLP_GETNPC(0x71b);
    NPCPTR = _@(0x16693);
    FF_APPLYEXTDATAGT(0x16691, 75, -(1), NPCPTR);
}

instance PART6_MEETFIRSTORC_FUNCTION.NPC(C_NPC)
var int PART6_MEETFIRSTORC_FUNCTION.NPCPTR = 0;
func void EVT_PART6_MEETFIRSTORC() {
    if (HLP_ISVALIDNPC(ORCWARRIOR_PART6)) {
        if ((BENGARFARM_ORCENCOUNTER) == (0)) {
            BENGARFARM_ORCENCOUNTER = 1;
            PART6_MEETFIRSTORC_FUNCTION();
        };
    };
    PRINTD("Nie spe³niasz warunków");
}

func void EVT_PART6_MEETFIRSTORC_REMOVE() {
    if ((BENGARFARM_ORCENCOUNTER) == (1)) {
        BENGARFARM_ORCENCOUNTER = 0;
        PRINTD("Nie spotka³eœ orka");
        FF_REMOVE(0x16691);
    };
    PRINTD("Nie spe³niasz warunków");
}

