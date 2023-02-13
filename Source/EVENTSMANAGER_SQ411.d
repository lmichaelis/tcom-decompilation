func void EVENTSMANAGER_SQ411() {
    if ((LOG_GETSTATUS(MIS_SQ411)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ411_TIMELIMIT) == (1)) {
        if ((SQ411_TIMELIMIT_DAY) <= ((WLD_GETDAY()) - (1))) {
            SQ411_TIMELIMIT = 2;
            B_LOGENTRY(TOPIC_SQ411, LOG_SQ411_ONEDAYLEFT);
        };
    };
    if ((SQ411_KAZEEMNEGOCIATION) == (1)) {
        if ((SQ411_KAZEEMNEGOCIATION_DAY) <= ((WLD_GETDAY()) - (1))) {
            if ((NPC_GETDISTTONPC(HERO, NONE_100012_KAZEEM_CHAPTER4)) >= (3000)) {
                SQ411_KAZEEMNEGOCIATION = 2;
                SQ411_PREPARENEWHOME();
                B_LOGENTRY(TOPIC_SQ411, LOG_SQ411_AFTERAUCTION);
            };
        };
    };
    if ((SQ411_FAILED) == (FALSE)) {
        if ((SQ411_KAZEEMWILLHELP) == (TRUE)) {
            if (C_SQ411_GOTRICHVLKARMOR(HERO)) {
                if ((SQ411_ALLPOSTERSDONE) == (2)) {
                    if ((SQ411_GOTRICHVLKARMOR_LOGENTRY) == (FALSE)) {
                        SQ411_GOTRICHVLKARMOR_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ411, LOG_SQ411_GOTARMOR);
                    };
                };
            };
        };
    };
}

