func void SQ404_PREPARENPC() {
    WLD_INSERTNPC(0xc6db, "PART11_PATH_205");
    WLD_INSERTITEM(0x91ba, "FP_PART16_SQ404_ITEM");
    FF_APPLYONCEEXTGT(0xf8f1, 0, -(1));
}

func void SQ404_PREPARENPC_APPLY() {
    if ((SQ404_PREPARENPC_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ404_PrepareNPC_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ404_MOVER_CORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ404_CORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ404_MOVER_CORPSE");
        SQ404_PREPARENPC_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ404_PrepareNPC_Apply");
        CHANGEVOBCOLLISION("SQ404_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf8f1);
        SQ404_PREPARENPC_COUNT = 0;
    };
}

var int SQ404_PREPARENPC_APPLY.SQ404_PREPARENPC_COUNT = 0;
instance SQ404_PREPARENPC_APPLY.MOVER1(ZCMOVER)
var int SQ404_PREPARENPC_APPLY.MOVPTR1 = 0;