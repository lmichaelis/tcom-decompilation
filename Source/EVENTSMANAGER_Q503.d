func void EVENTSMANAGER_Q503() {
    var int Q503_FOUNDDOOR_LOGENTRY;
    var int HEROPTR;
    if ((LOG_GETSTATUS(MIS_Q503)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q503_GOTOVOLFZACKE) == (1)) {
        if ((((NPC_GETDISTTOWP(KDW_203_RIORDIAN, "PART5_VOLFZACKE_10")) <= (750)) && ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART5_VOLFZACKE_10")) <= (750))) && ((NPC_GETDISTTOWP(HERO, "PART5_VOLFZACKE_10")) <= (750))) {
            if (((NPC_ISINSTATE(KDW_203_RIORDIAN, 61599)) == (FALSE)) && ((NPC_ISINSTATE(NONE_202_KESSEL, 61599)) == (FALSE))) {
                MUSIC_OVERRIDETRACK(21948);
                Q503_GOTOVOLFZACKE = 2;
                WLD_SENDTRIGGER("VOLFZACKGATE");
                FF_APPLYONCEEXTGT(63454, 0, -(1));
                FF_APPLYONCEEXT(63433, 900, 8);
                B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q503WAITV2");
                Q503_KESSEL_RTNCHECK = 3;
                NPC_REFRESH(NONE_202_KESSEL);
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "Q503WAITV2");
                NPC_REFRESH(KDW_203_RIORDIAN);
            };
        };
    };
    if ((Q503_BOSSFIGHT) == (1)) {
        if ((VOLFZACKEMAGE_BOSS.ATTRIBUTE[0]) <= (((VOLFZACKEMAGE_BOSS.ATTRIBUTE[1]) / (4)) * (3))) {
            PRINTD("Zombie 01");
            Q503_BOSSFIGHT = 2;
            WLD_INSERTNPC(51222, "FP_SPAWNPOINT_MAGEBOSS_01");
            Q503_TELEPORTMAGE();
        };
    };
    if ((Q503_BOSSFIGHT) == (2)) {
        if ((VOLFZACKEMAGE_BOSS.ATTRIBUTE[0]) <= ((VOLFZACKEMAGE_BOSS.ATTRIBUTE[1]) / (2))) {
            PRINTD("Zombie 02");
            Q503_BOSSFIGHT = 3;
            WLD_INSERTNPC(51223, "FP_SPAWNPOINT_MAGEBOSS_02");
            Q503_TELEPORTMAGE();
        };
    };
    if ((Q503_BOSSFIGHT) == (3)) {
        if ((VOLFZACKEMAGE_BOSS.ATTRIBUTE[0]) <= ((VOLFZACKEMAGE_BOSS.ATTRIBUTE[1]) / (3))) {
            PRINTD("Zombie 03");
            Q503_BOSSFIGHT = 4;
            WLD_INSERTNPC(51224, "FP_SPAWNPOINT_MAGEBOSS_03");
            Q503_TELEPORTMAGE();
        };
    };
    if ((Q503_GOTOVOLFZACKE) == (4)) {
        if (HLP_ISVALIDNPC(VOLFZACKEMAGE_BOSS)) {
            if (NPC_ISDEAD(VOLFZACKEMAGE_BOSS)) {
                MUSIC_DISABLEOVERRIDE();
                WLD_PLAYEFFECT("FX_EarthQuake", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
                HEROPTR = _@(1819);
                CLEARSLOWDOWNSPELL(HEROPTR);
                WLD_STOPEFFECT("SLOW_TIME_SPELL");
                Q503_GOTOVOLFZACKE = 5;
                Q503_MAKESKELETONSMORTAL();
                B_LOGENTRY(TOPIC_Q503, LOG_Q503_BOSSDEAD);
            };
        };
    };
    if ((Q503_GOTOVOLFZACKE) == (6)) {
        if ((Q503_FOUNDDOOR_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART5_VOLFZACKE_MAINGATE")) <= (900)) {
                Q503_FOUNDDOOR_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q503, LOG_Q503_FOUNDDOOR_TRY);
            };
        };
    };
}

