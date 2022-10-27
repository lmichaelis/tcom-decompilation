func void SQ207_DIMAISMAD() {
    B_STARTOTHERROUTINE(SLD_5001_DIMA, START);
    NPC_REFRESH(SLD_5001_DIMA);
    if (HLP_ISVALIDNPC(SLD_13686_ARAXOS)) {
        B_STARTOTHERROUTINE(SLD_13686_ARAXOS, TOT);
        NPC_REFRESH(SLD_13686_ARAXOS);
        TELEPORTNPCTOWP(0xcc13, SLD_13686_ARAXOS.WP);
    };
    if (HLP_ISVALIDNPC(VLK_13687_CITIZEN)) {
        B_STARTOTHERROUTINE(VLK_13687_CITIZEN, TOT);
        NPC_REFRESH(VLK_13687_CITIZEN);
        TELEPORTNPCTOWP(0xcc19, VLK_13687_CITIZEN.WP);
    };
}

func void SQ207_SCARMANCORPSE_PREPARE() {
    FF_APPLYONCEEXTGT(0xf505, 0, -(1));
}

func void SQ207_SCARMANCORPSE_APPLY() {
    if ((SQ207_SCARMANCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ207_ScarManCorpse_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ207_MOVER_SCARMANCORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ207_SCARMANCORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ207_MOVER_SCARMANCORPSE");
        SQ207_SCARMANCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ207_ScarManCorpse_Apply");
        CHANGEVOBCOLLISION("SQ207_SCARMANCORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf505);
        SQ207_SCARMANCORPSE_COUNT = 0;
    };
}

var int SQ207_SCARMANCORPSE_APPLY.SQ207_SCARMANCORPSE_COUNT = 0;
instance SQ207_SCARMANCORPSE_APPLY.MOVER1(ZCMOVER)
var int SQ207_SCARMANCORPSE_APPLY.MOVPTR1 = 0;