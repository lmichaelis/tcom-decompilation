func void GUMBERT_SQ127_APPLYFUNCION() {
    var int NPCPTR;
    var C_NPC NPC;
    NPC = HLP_GETNPC(1819);
    NPCPTR = _@(62200);
    FF_APPLYEXTDATAGT(62202, 2050, -(1), NPCPTR);
}

func void GUMBERT_SQ127_VINEMOVER() {
    if ((SQ127_VINETOHOME) == (1)) {
        if ((SQ127_VINETOHOME_DAY) <= ((WLD_GETDAY()) - (1))) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_HEROHOUSE_DOGGO")) >= (5000)) {
                PRINTD("Wino dodane");
                FF_REMOVE(62202);
                FF_APPLYONCEEXTGT(62203, 0, -(1));
            } else {
                PRINTD("Przeœpij siê 1 dzieñ i nie b¹dŸ blisko swego domu");
            };
        } else {
            PRINTD("Przeœpij siê 1 dzieñ i nie b¹dŸ blisko swego domu");
        };
    };
}

func void GUMBERT_SQ127_VINEMOVER_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int GUMBERT_SQ127_VINEMOVER_COUNT;
    if ((GUMBERT_SQ127_VINEMOVER_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Gumbert_SQ127_VineMover_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ127_MOVER_GUMBERTVINE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ127_GUMBERTVINE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ127_MOVER_GUMBERTVINE");
        GUMBERT_SQ127_VINEMOVER_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - Gumbert_SQ127_VineMover_Apply");
        CHANGEVOBCOLLISION("SQ127_GUMBERTVINE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62203);
        GUMBERT_SQ127_VINEMOVER_COUNT = 0;
    };
}

