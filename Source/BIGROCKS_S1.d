func void BIGROCKS_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        FADESCREENTOBLACKF(1, 48498, 1000);
    };
}

func void BIGROCKS_FADESCREEN_MOVER() {
    SQ301_ROCKSREMOVED = TRUE;
    B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_GOLDMINE);
    FF_APPLYONCEEXTGT(48500, 0, -(1));
    FF_APPLYONCEEXTGT(64046, 0, -(1));
    B_ENDPRODUCTIONDIALOG();
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    HERO.AIVAR[4] = FALSE;
    B_STARTOTHERROUTINE(VLK_6355_BRUNO, "GOLDMINE");
    B_STARTOTHERROUTINE(SLD_6356_ARAXOS, "GOLDMINE");
    B_STARTOTHERROUTINE(VLK_6357_NIVEL, "GOLDMINE");
    B_STARTOTHERROUTINE(VLK_6358_MIROH, "GOLDMINE");
    NPC_REFRESH(VLK_6355_BRUNO);
    NPC_REFRESH(SLD_6356_ARAXOS);
    NPC_REFRESH(VLK_6357_NIVEL);
    NPC_REFRESH(VLK_6358_MIROH);
    AI_FUNCTION(HERO, 48499);
    TELEPORTNPCTOWP(1819, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(55731, "PART3_GOLDMINE_01");
    WLD_INSERTNPC(55735, "PART3_GOLDMINE_01");
    WLD_INSERTNPC(55739, "PART3_GOLDMINE_01");
    WLD_INSERTNPC(55741, "PART3_GOLDMINE_01");
}

func void BIGROCKS_ENDFADESCREEN() {
    B_PASSTIME(1);
    FADESCREENFROMBLACK(2);
    HERO.AIVAR[4] = FALSE;
}

func void BIGROCKS_COLLISIONCHANGE() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int BIGROCKSCOLLISION;
    if ((BIGROCKSCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - BIGROCKS_CollisionChange");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_BIGROCKS_MOVER");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KM_PART3_BIGROCKS", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_BIGROCKS_MOVER");
        BIGROCKSCOLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - BIGROCKS_CollisionChange");
        CHANGEVOBCOLLISION("KM_PART3_BIGROCKS", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(48500);
        BIGROCKSCOLLISION = 0;
    };
}

