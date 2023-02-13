func void EVENTSMANAGER_SQ228() {
    if ((LOG_GETSTATUS(MIS_SQ228)) == (LOG_SUCCESS)) {
        if ((SQ228_REMOVERATNEST) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART6_SQ228_NEST3_RAT_01")) >= (5000)) {
                SQ228_REMOVERATNEST = 2;
                SQ228_REMOVEEVENTS();
            };
        };
    };
}

