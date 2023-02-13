func void EVENTSMANAGER_SQ414() {
    var int SQ414_WRONGWATERFALL_CHECK;
    if ((LOG_GETSTATUS(MIS_SQ414)) == (LOG_RUNNING)) {
        if ((SQ414_SKULL) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37386)) >= (1)) {
                SQ414_SKULL = TRUE;
                SQ414_SPAWNGHOST();
            };
        };
        if ((SQ414_CONFESSION_01_SPAWN) == (TRUE)) {
            if (((NPC_HASITEMS(HERO, 37387)) == (0)) || ((NPC_HASITEMS(HERO, 37392)) == (0))) {
                if ((NPC_GETDISTTOWP(HERO, "PART11_SQ414_WRONG")) <= (2500)) {
                    if ((SQ414_WRONGWATERFALL_CHECK) == (FALSE)) {
                        SQ414_WRONGWATERFALL_CHECK = TRUE;
                        B_LOGENTRY(TOPIC_SQ414, LOG_SQ414_WRONGWATERFALL);
                    };
                };
            };
        };
        if ((SQ414_GOTALLDOCS) == (FALSE)) {
            if ((((((NPC_HASITEMS(HERO, 37389)) >= (1)) && ((NPC_HASITEMS(HERO, 37392)) >= (1))) && ((NPC_HASITEMS(HERO, 37396)) >= (1))) && ((NPC_HASITEMS(HERO, 37400)) >= (1))) && ((NPC_HASITEMS(HERO, 37404)) >= (1))) {
                SQ414_GOTALLDOCS = TRUE;
                B_LOGENTRY(TOPIC_SQ414, LOG_SQ414_GOTALLDOCS);
            };
        };
        if ((SQ414_TRIALOGENABLE) == (1)) {
            if (((NPC_GETDISTTOWP(DJG_13329_TONAN, "PART6_TOWER_01")) <= (500)) || ((NPC_GETDISTTOWP(DJG_13329_TONAN, "PART6_TOWERGHOST_02")) <= (500))) {
                if ((NPC_ISINSTATE(DJG_13329_TONAN, 61599)) == (FALSE)) {
                    SQ414_TRIALOGENABLE = 2;
                    B_STARTOTHERROUTINE(DJG_13329_TONAN, "SQ414_TOWER");
                    NPC_REFRESH(DJG_13329_TONAN);
                };
            };
        };
        if ((SQ414_FINISHWAY) == (2)) {
            if ((SQ414_GHOSTISGONE) == (FALSE)) {
                if (NPC_ISDEAD(NONE_7000_GHOST)) {
                    SQ414_GHOSTISGONE = TRUE;
                    SQ414_REMOVEGHOST();
                };
            };
        };
        if ((KAPITEL) == (5)) {
            if ((SQ414_TELEPORTTONAN) == (1)) {
                B_STARTOTHERROUTINE(DJG_13329_TONAN, START);
                NPC_REFRESH(DJG_13329_TONAN);
                TELEPORTNPCTOWP(58323, DJG_13329_TONAN.WP);
                SQ414_TELEPORTTONAN = 2;
            };
        };
    };
}

