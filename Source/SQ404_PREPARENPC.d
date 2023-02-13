func void SQ404_PREPARENPC() {
    WLD_INSERTNPC(50907, "PART11_PATH_205");
    WLD_INSERTITEM(37306, "FP_PART16_SQ404_ITEM");
    FF_APPLYONCEEXTGT(63729, 0, -(1));
}

func void SQ404_PREPARENPC_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ404_PREPARENPC_COUNT;
    if ((SQ404_PREPARENPC_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ404_PrepareNPC_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ404_MOVER_CORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ404_CORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ404_MOVER_CORPSE");
        SQ404_PREPARENPC_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ404_PrepareNPC_Apply");
        CHANGEVOBCOLLISION("SQ404_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(63729);
        SQ404_PREPARENPC_COUNT = 0;
    };
}

