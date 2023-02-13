func void PART6_MEETFIRSTORC_APPLY() {
    if (((BENGARFARM_ORCENCOUNTER) == (1)) && ((NPC_GETDISTTONPC(HERO, ORCWARRIOR_PART6)) <= (1000))) {
        PRINTD("Spotka³eœ Orka");
        FF_REMOVE(91793);
        BENGARFARM_ORCENCOUNTER = 2;
    };
    PRINTD("Sprawdzam czy spotka³eœ orka");
}

func void PART6_MEETFIRSTORC_FUNCTION() {
    var int NPCPTR;
    var C_NPC NPC;
    NPC = HLP_GETNPC(1819);
    NPCPTR = _@(91795);
    FF_APPLYEXTDATAGT(91793, 75, -(1), NPCPTR);
}

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
        FF_REMOVE(91793);
    };
    PRINTD("Nie spe³niasz warunków");
}

