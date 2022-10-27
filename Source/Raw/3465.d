func void GUMBERT_SQ127_APPLYFUNCION() {
    NPC = HLP_GETNPC(0x71b);
    NPCPTR = _@(0xf2f8);
    FF_APPLYEXTDATAGT(0xf2fa, 0x802, -(1), NPCPTR);
}

instance GUMBERT_SQ127_APPLYFUNCION.NPC(C_NPC)
var int GUMBERT_SQ127_APPLYFUNCION.NPCPTR = 0;
func void GUMBERT_SQ127_VINEMOVER() {
    if ((SQ127_VINETOHOME) == (1)) {
        if ((SQ127_VINETOHOME_DAY) <= ((WLD_GETDAY()) - (1))) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_HEROHOUSE_DOGGO")) >= (0x1388)) {
                PRINTD("Wino dodane");
                FF_REMOVE(0xf2fa);
                FF_APPLYONCEEXTGT(0xf2fb, 0, -(1));
            } else {
                PRINTD("Przeœpij siê 1 dzieñ i nie b¹dŸ blisko swego domu");
            } else {
                /* set_instance(0) */;
            };
        };
        PRINTD("Przeœpij siê 1 dzieñ i nie b¹dŸ blisko swego domu");
    };
}

func void GUMBERT_SQ127_VINEMOVER_APPLY() {
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
        FF_REMOVE(0xf2fb);
        GUMBERT_SQ127_VINEMOVER_COUNT = 0;
    };
}

var int GUMBERT_SQ127_VINEMOVER_APPLY.GUMBERT_SQ127_VINEMOVER_COUNT = 0;
instance GUMBERT_SQ127_VINEMOVER_APPLY.MOVER1(ZCMOVER)
var int GUMBERT_SQ127_VINEMOVER_APPLY.MOVPTR1 = 0;
