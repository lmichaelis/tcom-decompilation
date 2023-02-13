func void EVENTSMANAGER_CQ005() {
    if ((LOG_GETSTATUS(MIS_CQ005)) != (LOG_RUNNING)) {
        return;
    };
    if ((CQ005_CHANGESILVESTRRTN) == (TRUE)) {
        if (((NPC_GETDISTTOWP(PAL_101_SILVESTR, PARTM2_PATH_19)) <= (700)) && (!(NPC_ISINSTATE(PAL_101_SILVESTR, 61599)))) {
            B_STARTOTHERROUTINE(PAL_101_SILVESTR, "CQ005_GuideTrap");
            CQ005_CHANGESILVESTRRTN = FALSE;
            PRINTD("Silvestr zmieni³ RTN");
        };
    };
    if ((CQ005_CHANGESILVESTRRTN) == (FALSE)) {
        if (((NPC_GETDISTTOWP(PAL_101_SILVESTR, "PARTM3_RODERICH_10")) <= (300)) && (!(NPC_ISINSTATE(PAL_101_SILVESTR, 61599)))) {
            B_STARTOTHERROUTINE(PAL_101_SILVESTR, "CQ005_Smalltalk");
            CQ005_CHANGESILVESTRRTN = TRUE;
            PRINTD("Silvestr zmieni³ RTN");
        };
        if (((NPC_GETDISTTOWP(PAL_101_SILVESTR, "PART1_SILVESTR")) <= (300)) && (!(NPC_ISINSTATE(PAL_101_SILVESTR, 61599)))) {
            B_STARTOTHERROUTINE(PAL_101_SILVESTR, "CQ005_RITUAL");
            CQ005_CHANGESILVESTRRTN = TRUE;
            PRINTD("Silvestr zmieni³ RTN");
        };
    };
    if ((CQ005_FIGHTWITHTHUGS) == (1)) {
        if (HLP_ISVALIDNPC(PAL_101_SILVESTR)) {
            if (NPC_ISDEAD(PAL_101_SILVESTR)) {
                PRINTD("Silvestr nie ¿yje!");
                if ((((HLP_ISVALIDNPC(NONE_6255_THUG)) && (HLP_ISVALIDNPC(NONE_6256_THUG))) && (HLP_ISVALIDNPC(NONE_6257_THUG))) && (HLP_ISVALIDNPC(NONE_6258_THUG))) {
                    CQ005_RESTARTTHUGS();
                    FF_APPLYONCEEXT(62692, 75, 4);
                    CQ005_FIGHTWITHTHUGS = 3;
                };
            };
        };
    };
    if ((CQ005_FIGHTWITHTHUGS) == (2)) {
        if ((((HLP_ISVALIDNPC(NONE_6255_THUG)) && (HLP_ISVALIDNPC(NONE_6256_THUG))) && (HLP_ISVALIDNPC(NONE_6257_THUG))) && (HLP_ISVALIDNPC(NONE_6258_THUG))) {
            if ((((NPC_ISDEAD(NONE_6255_THUG)) && (NPC_ISDEAD(NONE_6256_THUG))) && (NPC_ISDEAD(NONE_6257_THUG))) && (NPC_ISDEAD(NONE_6258_THUG))) {
                CQ005_RESTARTPALADIN();
                CQ005_FIGHTWITHTHUGS = 4;
            };
        };
    };
}

