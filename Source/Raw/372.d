func void EASTEREGG_GARRUS_PREPARESCENE_APPLY() {
    if ((EASTEREGG_GARRUS_PREPARESCENE_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - EasterEgg_Garrus_PrepareScene_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MOVER_EVENT_MASSEFFECT");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("EVENT_MASSEFFECT_CANON", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MOVER_EVENT_MASSEFFECT");
        EASTEREGG_GARRUS_PREPARESCENE_COLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - EasterEgg_Garrus_PrepareScene_Apply");
        CHANGEVOBCOLLISION("EVENT_MASSEFFECT_CANON", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xa3b9);
        EASTEREGG_GARRUS_PREPARESCENE_COLLISION = 0;
    };
}

var int EASTEREGG_GARRUS_PREPARESCENE_APPLY.EASTEREGG_GARRUS_PREPARESCENE_COLLISION = 0;
instance EASTEREGG_GARRUS_PREPARESCENE_APPLY.MOVER1(ZCMOVER)
var int EASTEREGG_GARRUS_PREPARESCENE_APPLY.MOVPTR1 = 0;
