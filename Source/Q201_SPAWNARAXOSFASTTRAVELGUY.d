func void Q201_SPAWNARAXOSFASTTRAVELGUY() {
    Q201_SPAWNEARAXOSFASTTRAVEL = 1;
    FF_APPLYONCEEXTGT(61955, 0, -(1));
    WLD_INSERTNPC(57394, "PART2_Q201_FASTTRAVEL_01");
}

func void Q201_SPAWNARAXOSFASTTRAVELGUY_APPLY() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int Q201_SPAWNARAXOSFASTTRAVELGUY_COUNT;
    if ((Q201_SPAWNARAXOSFASTTRAVELGUY_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q201_SpawnAraxosFastTravelGuy_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q201_FASTTRAVEL_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("Q201_FASTTRAVEL_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_06", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_07", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_08", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_09", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_10", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_11", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_12", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_13", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("Q201_FASTTRAVEL_01");
        WLD_SENDTRIGGER("Q201_FASTTRAVEL_02");
        Q201_SPAWNARAXOSFASTTRAVELGUY_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q201_SpawnAraxosFastTravelGuy_Apply");
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_12", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_13", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(61955);
        Q201_SPAWNARAXOSFASTTRAVELGUY_COUNT = 0;
    };
}

func void Q201_SPAWNARAXOSFASTTRAVELGUY_VILLAGE_APPLY() {
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int MOVPTR2;
    var int Q201_SPAWNARAXOSFASTTRAVELGUY_VILLAGE_COUNT;
    if ((Q201_SPAWNARAXOSFASTTRAVELGUY_VILLAGE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q201_SpawnAraxosFastTravelGuy_Village_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q201_FASTTRAVEL_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("Q201_FASTTRAVEL_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("Q201_FASTTRAVEL_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_06", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_07", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_08", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_09", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_10", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_11", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_12", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_13", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_14", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_15", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_16", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_17", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("Q201_FASTTRAVEL_01");
        WLD_SENDTRIGGER("Q201_FASTTRAVEL_02");
        WLD_SENDTRIGGER("Q201_FASTTRAVEL_03");
        Q201_SPAWNARAXOSFASTTRAVELGUY_VILLAGE_COUNT = 1;
    };
    if (((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q201_SpawnAraxosFastTravelGuy_Village_Apply");
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_12", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_13", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_14", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_15", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_16", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q201_FASTTRAVEL_VOB_17", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(61961);
        Q201_SPAWNARAXOSFASTTRAVELGUY_VILLAGE_COUNT = 0;
    };
}

func void Q201_CITYPERMIT() {
    if ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) {
        if ((Q201_NEEDPERMIT) == (0)) {
            Q201_NEEDPERMIT = 1;
            AI_LOGENTRY(TOPIC_Q201, LOG_Q201_PERMIT);
        };
    };
}

func void Q201_FINISHQUEST() {
    if ((SQ201_SALZER_CANUSEBARREL) == (1)) {
        SQ201_SALZER_CANUSEBARREL = 0;
        MOB_CHANGEFOCUSNAME("SQ201_BARREL", "MOBNAME_NOTHING");
    };
    B_STARTOTHERROUTINE(MIL_6371_DUSTER, START);
    LOG_SETSTATUS(_@(MIS_Q201), TOPIC_Q201, LOG_SUCCESS);
    B_LOGENTRY(TOPIC_Q201, LOG_Q201_NEXTMOVE);
    B_GIVEPLAYERXP(XP_Q201_FINISH);
    LOG_CREATETOPIC(TOPIC_Q209, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q209), TOPIC_Q209, LOG_RUNNING);
    B_LOGENTRY(TOPIC_Q209, LOG_Q209_START);
    B_REMOVENPC(57692);
}

func void Q201_OPENSEWERS_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int Q201_OPENSEWERS_COUNT;
    if ((Q201_OPENSEWERS_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q201_OpenSewers_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q201_MOVER_CORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("Q201_CORPSE", FALSE, FALSE, FALSE, TRUE);
        if ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) {
            WLD_SENDTRIGGER("Q201_SEWERSDOOR");
            WLD_INSERTNPC(50154, "PART2_SEWERS_01");
        };
        WLD_SENDTRIGGER("Q201_MOVER_CORPSE");
        Q201_OPENSEWERS_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q201_OpenSewers_Apply");
        CHANGEVOBCOLLISION("Q201_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(61971);
        Q201_OPENSEWERS_COUNT = 0;
    };
}

