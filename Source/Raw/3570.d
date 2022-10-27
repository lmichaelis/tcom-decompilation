func void SQ301_WORKERSGOHOME() {
    if ((SQ301_WORKERSGOHOME_CHECK) == (FALSE)) {
        SQ301_WORKERSGOHOME_CHECK = TRUE;
        B_STARTOTHERROUTINE(NONE_6359_WORKER, TOT);
        NPC_REFRESH(NONE_6359_WORKER);
        B_STARTOTHERROUTINE(NONE_6360_WORKER, TOT);
        NPC_REFRESH(NONE_6360_WORKER);
    };
}

var int SQ301_WORKERSGOHOME.SQ301_WORKERSGOHOME_CHECK = 0;
func void SQ301_FINISHQUEST() {
    if ((HERO.GUILD) == (GIL_MIL)) {
        B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_ABOUTMINE_V1);
        SQ301_GUILDLEADERTALK = TRUE;
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_ABOUTMINE_V2);
        SQ301_GUILDLEADERTALK = TRUE;
    };
    SQ301_SPAWNNEWMONSTERS = 1;
    SQ301_SPAWNNEWMONSTERS = WLD_GETDAY();
    B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_MINERSLESSON);
    LOG_SETSTATUS(_@(MIS_SQ301), TOPIC_SQ301, LOG_SUCCESS);
}

func void SQ301_SPAWNNPC() {
    WLD_INSERTNPC(0xd9a5, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9a7, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9a9, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9ab, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9ad, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9af, "PART3_GOLDMINE_04");
    WLD_INSERTNPC(0xd9b1, "PART3_GOLDMINE_04");
}

func void SQ301_RELOADMOBS() {
    if ((GOLDMOB_01_USED) == (1)) {
        GOLDMOB_01_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_01", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_02_USED) == (1)) {
        GOLDMOB_02_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_02", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_03_USED) == (1)) {
        GOLDMOB_03_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_03", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_04_USED) == (1)) {
        GOLDMOB_04_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_04", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_05_USED) == (1)) {
        GOLDMOB_05_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_05", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_06_USED) == (1)) {
        GOLDMOB_06_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_06", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_07_USED) == (1)) {
        GOLDMOB_07_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_07", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_08_USED) == (1)) {
        GOLDMOB_08_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_08", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_09_USED) == (1)) {
        GOLDMOB_09_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_09", "MOBNAME_IRONMOB");
    };
    if ((GOLDMOB_10_USED) == (1)) {
        GOLDMOB_10_USED = 0;
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_10", "MOBNAME_IRONMOB");
    };
}

func void SQ301_PREPARECAMP() {
    if ((SQ301_WHOMINE) == (1)) {
        WLD_SENDTRIGGER("SQ301_MOVER_FLAGS_01");
    };
    if ((SQ301_WHOMINE) == (2)) {
        WLD_SENDTRIGGER("SQ301_MOVER_FLAGS_02");
    };
    SQ301_RELOADMOBS();
    SQ301_SPAWNNPC();
}

func void SQ301_PREPARECAMP_APPLY() {
    if ((SQ301_PREPARECAMP_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - SQ301_PrepareCamp_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ301_MOVER_CAMP");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ301_MOVER_FLAGS_01");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ301_MOVER_FLAGS_02");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        CHANGEVOBCOLLISION("SQ301_CAMP_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ301_CAMP_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ301_CAMP_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ301_CAMP_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ301_CAMP_05", FALSE, FALSE, FALSE, FALSE);
        WLD_SENDTRIGGER("SQ301_MOVER_CAMP");
        SQ301_PREPARECAMP_COLLISION = 1;
    };
    if (((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ301_PrepareCamp_Apply");
        CHANGEVOBCOLLISION("SQ301_CAMP_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ301_CAMP_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ301_CAMP_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ301_CAMP_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ301_CAMP_05", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xfa2e);
        SQ301_PREPARECAMP_COLLISION = 0;
    };
}

var int SQ301_PREPARECAMP_APPLY.SQ301_PREPARECAMP_COLLISION = 0;
instance SQ301_PREPARECAMP_APPLY.MOVER1(ZCMOVER)
instance SQ301_PREPARECAMP_APPLY.MOVER2(ZCMOVER)
instance SQ301_PREPARECAMP_APPLY.MOVER3(ZCMOVER)
var int SQ301_PREPARECAMP_APPLY.MOVPTR1 = 0;
var int SQ301_PREPARECAMP_APPLY.MOVPTR2 = 0;
var int SQ301_PREPARECAMP_APPLY.MOVPTR3 = 0;