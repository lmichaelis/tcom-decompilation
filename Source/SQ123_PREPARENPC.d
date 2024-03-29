func void SQ123_PREPARENPC() {
    WLD_SENDTRIGGER("SQ123_CROWD");
    B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, "SQ123_WATCHCONTEST");
    NPC_REFRESH(NONE_6086_FISHERMAN);
    TELEPORTNPCTOWP(55951, NONE_6086_FISHERMAN.WP);
    B_STARTOTHERROUTINE(NONE_6087_FISHERMAN, "SQ123_WATCHCONTEST");
    NPC_REFRESH(NONE_6087_FISHERMAN);
    TELEPORTNPCTOWP(55958, NONE_6087_FISHERMAN.WP);
    B_STARTOTHERROUTINE(NONE_6088_FISHERMAN, "SQ123_WATCHCONTEST");
    NPC_REFRESH(NONE_6088_FISHERMAN);
    TELEPORTNPCTOWP(55964, NONE_6088_FISHERMAN.WP);
    B_STARTOTHERROUTINE(NONE_6085_LIMAN, "SQ123_WATCHCONTEST");
    NPC_REFRESH(NONE_6085_LIMAN);
    TELEPORTNPCTOWP(55895, NONE_6085_LIMAN.WP);
    B_STARTOTHERROUTINE(NONE_6346_ZACHARY, "SQ123_WATCHCONTEST");
    NPC_REFRESH(NONE_6346_ZACHARY);
    TELEPORTNPCTOWP(55909, NONE_6346_ZACHARY.WP);
    B_STARTOTHERROUTINE(NONE_6350_SVEN, TOT);
    NPC_REFRESH(NONE_6350_SVEN);
    TELEPORTNPCTOWP(55928, NONE_6350_SVEN.WP);
    B_STARTOTHERROUTINE(NONE_6347_HAROLD, TOT);
    NPC_REFRESH(NONE_6347_HAROLD);
    TELEPORTNPCTOWP(55915, NONE_6347_HAROLD.WP);
    FF_APPLYONCEEXTGT(62094, 0, -(1));
}

func void SQ123_STOPWATCHFIGHT() {
    WLD_SENDUNTRIGGER("SQ123_CROWD");
    AI_PLAYANI(HERO, "T_LOOKOUT_2_STAND");
    B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, "SQ123_STOPCONTEST");
    NPC_REFRESH(NONE_6086_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6087_FISHERMAN, "SQ123_STOPCONTEST");
    NPC_REFRESH(NONE_6087_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6088_FISHERMAN, "SQ123_STOPCONTEST");
    NPC_REFRESH(NONE_6088_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6085_LIMAN, "SQ123_STOPCONTEST");
    NPC_REFRESH(NONE_6085_LIMAN);
    B_STARTOTHERROUTINE(NONE_6346_ZACHARY, "SQ123_STOPCONTEST");
    NPC_REFRESH(NONE_6346_ZACHARY);
}

func void SQ123_PREPARENPC_APPLY() {
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int MOVPTR2;
    var int SQ123_PREPARENPC_COUNT;
    if ((SQ123_PREPARENPC_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ123_PrepareNPC_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_BOATTODESTROY_HAROLD");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_BOATTODESTROY_SVEN");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_HAROLD", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_MOVER_BOAT_HAROLD_02", FALSE, TRUE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_MOVER_BOAT_SVEN_02", FALSE, TRUE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_HAROLD_MODEL", FALSE, TRUE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_SVEN_MODEL", FALSE, TRUE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ123_MOVER_BOATTODESTROY_HAROLD");
        WLD_SENDTRIGGER("SQ123_MOVER_BOATTODESTROY_SVEN");
        SQ123_PREPARENPC_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ123_PrepareNPC_Apply");
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_HAROLD", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", TRUE, TRUE, TRUE, TRUE);
        SQ123_PREPARENPC_COUNT = 0;
        FF_REMOVE(62094);
    };
}

func void SQ123_FISHINGCONTESTCUTSCENE_PREPARE() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(62101, 75, 4);
}

func void SQ123_FISHINGCONTESTCUTSCENE_APPLY() {
    var int SQ123_FISHINGCONTESTCUTSCENE_COUNT;
    SQ123_FISHINGCONTESTCUTSCENE_COUNT = (SQ123_FISHINGCONTESTCUTSCENE_COUNT) + (1);
    if ((SQ123_FISHINGCONTESTCUTSCENE_COUNT) == (4)) {
        CUTSCENE_START(92874);
    };
}

func void SQ123_FISHINGCONTESTCUTSCENE_END() {
    FADESCREENTOBLACKF(1, 62104, 1000);
}

func void SQ123_FISHINGCONTESTCUTSCENE_END_FADESCREEN() {
    FF_APPLYONCEEXTGT(62106, 0, -(1));
}

func void SQ123_AFTERCONTEST() {
    if ((SQ123_DESTROYEDBOAT) == (1)) {
        B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6086_FISHERMAN);
        TELEPORTNPCTOWP(55951, NONE_6086_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6087_FISHERMAN, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6087_FISHERMAN);
        TELEPORTNPCTOWP(55958, NONE_6087_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6088_FISHERMAN, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6088_FISHERMAN);
        TELEPORTNPCTOWP(55964, NONE_6088_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6085_LIMAN, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6085_LIMAN);
        TELEPORTNPCTOWP(55895, NONE_6085_LIMAN.WP);
        B_STARTOTHERROUTINE(NONE_6346_ZACHARY, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6346_ZACHARY);
        TELEPORTNPCTOWP(55909, NONE_6346_ZACHARY.WP);
        B_STARTOTHERROUTINE(NONE_6350_SVEN, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6350_SVEN);
        TELEPORTNPCTOWP(55928, NONE_6350_SVEN.WP);
        B_STARTOTHERROUTINE(NONE_6347_HAROLD, "SQ123_HAROLDWON");
        NPC_REFRESH(NONE_6347_HAROLD);
        TELEPORTNPCTOWP(55915, NONE_6347_HAROLD.WP);
    };
    if ((SQ123_DESTROYEDBOAT) == (2)) {
        B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6086_FISHERMAN);
        TELEPORTNPCTOWP(55951, NONE_6086_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6087_FISHERMAN, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6087_FISHERMAN);
        TELEPORTNPCTOWP(55958, NONE_6087_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6088_FISHERMAN, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6088_FISHERMAN);
        TELEPORTNPCTOWP(55964, NONE_6088_FISHERMAN.WP);
        B_STARTOTHERROUTINE(NONE_6085_LIMAN, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6085_LIMAN);
        TELEPORTNPCTOWP(55895, NONE_6085_LIMAN.WP);
        B_STARTOTHERROUTINE(NONE_6346_ZACHARY, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6346_ZACHARY);
        TELEPORTNPCTOWP(55909, NONE_6346_ZACHARY.WP);
        B_STARTOTHERROUTINE(NONE_6350_SVEN, "SQ123_SVENWON");
        NPC_REFRESH(NONE_6350_SVEN);
        TELEPORTNPCTOWP(55928, NONE_6350_SVEN.WP);
        B_REMOVENPC(55915);
    };
}

func void SQ123_FISHINGCONTESTCUTSCENE_END_APPLY() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ123_FISHINGCONTESTCUTSCENE_END_COUNT;
    if ((SQ123_FISHINGCONTESTCUTSCENE_END_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ123_FishingContestCutscene_End_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_BOATTODESTROY_HAROLD");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_BOATTODESTROY_SVEN");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_CORPSE_HAROLD");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        if ((SQ123_DESTROYEDBOAT) == (1)) {
            CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_HAROLD", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ123_DESTROYEDBOAT) == (2)) {
            CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", FALSE, FALSE, FALSE, TRUE);
        };
        CHANGEVOBCOLLISION("SQ123_MOVER_BOAT_HAROLD_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ123_MOVER_BOAT_SVEN_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ123_HAROLD_MODEL", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SQ123_SVEN_MODEL", FALSE, FALSE, FALSE, FALSE);
        if ((SQ123_DESTROYEDBOAT) == (1)) {
            WLD_SENDTRIGGER("SQ123_MOVER_BOATTODESTROY_HAROLD");
        } else if ((SQ123_DESTROYEDBOAT) == (2)) {
            WLD_SENDTRIGGER("SQ123_MOVER_BOATTODESTROY_SVEN");
            WLD_SENDTRIGGER("SQ123_MOVER_CORPSE_HAROLD");
        };
        SQ123_FISHINGCONTESTCUTSCENE_END_COUNT = 1;
    };
    if (((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ123_FishingContestCutscene_End_Apply");
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_HAROLD", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", TRUE, TRUE, TRUE, TRUE);
        AI_RESETFACEANI(NONE_6086_FISHERMAN);
        AI_RESETFACEANI(NONE_6087_FISHERMAN);
        AI_RESETFACEANI(NONE_6088_FISHERMAN);
        AI_RESETFACEANI(NONE_6085_LIMAN);
        AI_RESETFACEANI(NONE_6346_ZACHARY);
        SQ123_FISHINGCONTESTCUTSCENE_END_COUNT = 0;
        SQ123_FISHINGCONTEST = 4;
        WLD_SENDUNTRIGGER("SQ123_CONTEST_01");
        WLD_SENDUNTRIGGER("SQ123_CONTEST_02");
        WLD_SENDUNTRIGGER("SQ123_CONTEST_03");
        SQ123_AFTERCONTEST();
        B_PASSTIME(1);
        FADESCREENFROMBLACK(1);
        HERO.AIVAR[4] = FALSE;
        if ((SQ123_DESTROYEDBOAT) == (1)) {
            B_LOGENTRY(TOPIC_SQ123, LOG_SQ123_CONTEST_HAROLDWON);
        } else if ((SQ123_DESTROYEDBOAT) == (2)) {
            B_LOGENTRY(TOPIC_SQ123, LOG_SQ123_CONTEST_SVENWON);
        };
        FF_REMOVE(62106);
        SQ123_FISHINGCONTESTCUTSCENE_END_COUNT = 0;
    };
}

func void SQ123_AFTERCONTEST_BRINGBACKRTN() {
    if ((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, "QA401_WAIT");
    };
    B_STARTOTHERROUTINE(NONE_6086_FISHERMAN, START);
    NPC_REFRESH(NONE_6086_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6087_FISHERMAN, START);
    NPC_REFRESH(NONE_6087_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6088_FISHERMAN, START);
    NPC_REFRESH(NONE_6088_FISHERMAN);
    B_STARTOTHERROUTINE(NONE_6085_LIMAN, START);
    NPC_REFRESH(NONE_6085_LIMAN);
    B_STARTOTHERROUTINE(NONE_6346_ZACHARY, START);
    NPC_REFRESH(NONE_6346_ZACHARY);
    if ((SQ123_DESTROYEDBOAT) == (2)) {
        FF_APPLYONCEEXTGT(62115, 0, -(1));
    };
}

func void SQ123_REMOVEHAROLDCORPSE_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ123_REMOVEHAROLDCORPSE_COUNT;
    if ((SQ123_REMOVEHAROLDCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ123_RemoveHaroldCorpse_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_CORPSE_HAROLD");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", FALSE, FALSE, FALSE, FALSE);
        WLD_SENDTRIGGER("SQ123_MOVER_CORPSE_HAROLD");
        SQ123_REMOVEHAROLDCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ123_RemoveHaroldCorpse_Apply");
        CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62115);
        SQ123_REMOVEHAROLDCORPSE_COUNT = 0;
    };
}

func void SQ123_REMOVESVEN() {
    B_REMOVENPC(55928);
    WLD_INSERTITEM(37013, "FP_SVEN_CORPSE_LETTER");
    FF_APPLYONCEEXTGT(62120, 0, -(1));
}

func void SQ123_REMOVESVEN_APPLY() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ123_REMOVESVEN_COUNT;
    if ((SQ123_REMOVESVEN_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ123_RemoveSven_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_BOATTODESTROY_SVEN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_CORPSE_SVEN");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ123_MOVER_CORPSE_HAROLD");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_CORPSE_SVEN", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", FALSE, FALSE, FALSE, FALSE);
        WLD_SENDTRIGGER("SQ123_MOVER_BOATTODESTROY_SVEN");
        WLD_SENDTRIGGER("SQ123_MOVER_CORPSE_SVEN");
        WLD_SENDTRIGGER("SQ123_MOVER_CORPSE_HAROLD");
        SQ123_REMOVESVEN_COUNT = 1;
    };
    if (((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ123_RemoveSven_Apply");
        CHANGEVOBCOLLISION("SQ123_BOATTODESTROY_SVEN", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ123_CORPSE_SVEN", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ123_CORPSE_HAROLD", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62120);
        SQ123_REMOVESVEN_COUNT = 0;
    };
}

