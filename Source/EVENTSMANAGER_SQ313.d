func void EVENTSMANAGER_SQ313() {
    if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ313_HUUGCUTSCENEENABLE) == (1)) {
        PRINTD("Event");
        SQ313_HUUGCUTSCENEENABLE = 2;
        FF_APPLYONCEEXT(62419, 75, 4);
        HERO.AIVAR[4] = TRUE;
    };
    if ((SQ313_HUUGESCAPE) == (1)) {
        if ((((SQ313_HUUGEVENT) == (1)) && ((NPC_GETDISTTOWP(NONE_1004_HUUG, "HARBOUR_SQ313_HUUG")) <= (500))) && ((NPC_ISINSTATE(NONE_1004_HUUG, 61599)) == (FALSE))) {
            B_STARTOTHERROUTINE(NONE_1004_HUUG, "SQ313_FLEE_TIRED_01");
            NPC_REFRESH(NONE_1004_HUUG);
            PRINTD("Huug dobieg�");
            SQ313_HUUGESCAPE = 2;
        } else if ((((SQ313_HUUGEVENT) == (2)) && ((NPC_GETDISTTOWP(NONE_1004_HUUG, "HARBOUR_SQ313_HUUG_02")) <= (500))) && ((NPC_ISINSTATE(NONE_1004_HUUG, 61599)) == (FALSE))) {
            B_STARTOTHERROUTINE(NONE_1004_HUUG, "SQ313_FLEE_TIRED_02");
            NPC_REFRESH(NONE_1004_HUUG);
            PRINTD("Huug dobieg�");
            SQ313_HUUGESCAPE = 2;
        };
        if ((SQ313_APPLYSPRINTFORMARVIN) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_244")) <= (400)) {
                SQ313_APPLYSPRINTFORMARVIN = 1;
                MDL_APPLYOVERLAYMDSTIMED(HERO, HUMANSSPRINTMDS, 40000);
            };
        };
    };
    if ((SQ313_HUUGEVENT) == (1)) {
        if ((SQ313_FIGHTHUUG) == (1)) {
            if ((((((NPC_ISDEAD(NONE_1004_HUUG)) && (NPC_ISDEAD(NONE_6255_THUG))) && (NPC_ISDEAD(NONE_6256_THUG))) && (NPC_ISDEAD(NONE_6257_THUG))) && (NPC_ISDEAD(NONE_6258_THUG))) && ((NPC_ISINSTATE(KDF_6404_TRIMEGISTO, 61599)) == (FALSE))) {
                SQ313_FIGHTHUUG = 2;
                B_LOGENTRY(TOPIC_SQ313, LOG_SQ313_HUUG_DEAD);
                B_STARTOTHERROUTINE(KDF_6404_TRIMEGISTO, "SQ313_HUUGHOUSE_WAIT");
                NPC_REFRESH(KDF_6404_TRIMEGISTO);
            };
        };
    };
    if ((SQ313_ENDING) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM1_SQ313_VICTIM_01")) <= (300)) {
            if ((((((NPC_GETDISTTOWP(KDF_6404_TRIMEGISTO, "PARTM1_FIREMAGES_35")) <= (500)) && ((NPC_GETDISTTOWP(KDF_9004_TENGRAL, "PARTM1_SQ313_JUDGE_01")) <= (500))) && ((NPC_GETDISTTOWP(KDF_11261_FIREMAGE, "PARTM1_SQ313_JUDGE_02")) <= (500))) && ((NPC_GETDISTTOWP(PAL_101_SILVESTR, "PARTM1_SQ313_SILVESTR")) <= (500))) && ((NPC_GETDISTTOWP(NONE_1004_HUUG, "PARTM1_SQ313_VICTIM_01")) <= (500))) {
                SQ313_ENDING = 3;
                FF_APPLYONCEEXT(62425, 75, 4);
                HERO.AIVAR[4] = TRUE;
            };
        };
    };
}

