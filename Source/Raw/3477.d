func void SQ114_BEVINBADENDING() {
    B_REMOVENPC(0xdbec);
    FF_APPLYONCEEXTGT(0xf3a8, 0, -(1));
}

func void SQ114_BEVINBADENDING_APPLY() {
    if ((SQ114_BEVINBADENDING_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ114_BevinBadEnding_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ114_MOVER_BEVINCORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ114_BEVINCORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ114_MOVER_BEVINCORPSE");
        SQ114_BEVINBADENDING_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ114_BevinBadEnding_Apply");
        CHANGEVOBCOLLISION("SQ114_BEVINCORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf3a8);
        SQ114_BEVINBADENDING_COUNT = 0;
    };
}

var int SQ114_BEVINBADENDING_APPLY.SQ114_BEVINBADENDING_COUNT = 0;
instance SQ114_BEVINBADENDING_APPLY.MOVER1(ZCMOVER)
var int SQ114_BEVINBADENDING_APPLY.MOVPTR1 = 0;
