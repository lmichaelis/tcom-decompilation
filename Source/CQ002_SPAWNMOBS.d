func void CQ002_SPAWNMOBS() {
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_01)) {
        WLD_INSERTNPC(50705, "PART3_MOB_90");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_02)) {
        WLD_INSERTNPC(50705, "PART3_MOB_27");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_03)) {
        WLD_INSERTNPC(50704, "PART3_MOB_28");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_04)) {
        WLD_INSERTNPC(50705, "PART3_MOB_30");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_05)) {
        WLD_INSERTNPC(50704, "PART3_MOB_31");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_06)) {
        WLD_INSERTNPC(50705, "PART3_MOB_36");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_07)) {
        WLD_INSERTNPC(50704, "PART3_MOB_37");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_08)) {
        WLD_INSERTNPC(50704, "PART3_MOB_32");
    };
    if (NPC_ISDEAD(SCAVENGER_BEFORE_CQ002_09)) {
        WLD_INSERTNPC(50759, "PART3_MOB_34");
    };
    WLD_INSERTNPC(50311, "FP_ROAM_PART3_145");
    FF_APPLYONCEEXTGT(62666, 0, -(1));
}

func void CQ002_ZIGMARCORPSE_APPLY() {
    var int MOVPTR1;
    var ZCMOVER MOVER1;
    var int CQ002_ZIGMARCORPSE_COUNT;
    if ((CQ002_ZIGMARCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - CQ002_ZigmarCorpse_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("CQ002_MOVER_ZIGMARCORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("CQ002_CORPSE_ZIGMAR", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("CQ002_MOVER_ZIGMARCORPSE");
        CQ002_ZIGMARCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - CQ002_ZigmarCorpse_Apply");
        CHANGEVOBCOLLISION("CQ002_CORPSE_ZIGMAR", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62666);
        CQ002_ZIGMARCORPSE_COUNT = 0;
    };
}

