func void PQ108_PREPARECORPSE() {
    FF_APPLYONCEEXTGT(62744, 0, -(1));
}

func void PQ108_PREPARECORPSE_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int PQ108_PREPARECORPSE_COUNT;
    if ((PQ108_PREPARECORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - PQ108_PrepareCorpse_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("PQ108_MOVER_CORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("PQ108_CORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("PQ108_MOVER_CORPSE");
        PQ108_PREPARECORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - PQ108_PrepareCorpse_Apply");
        CHANGEVOBCOLLISION("PQ108_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62744);
        PQ108_PREPARECORPSE_COUNT = 0;
    };
}

