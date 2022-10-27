func void EVENTSMANAGER_SQ103() {
    if ((LOG_GETSTATUS(MIS_SQ103)) == (LOG_RUNNING)) {
        if ((SQ103_BEASTROAR) == (FALSE)) {
            if ((((NPC_GETDISTTOWP(HERO, "PART_13_NAV_25")) <= (850)) || ((NPC_GETDISTTOWP(HERO, "PART_13_NAV_16")) <= (850))) || ((NPC_GETDISTTOWP(HERO, "PART_13_NAV_85")) <= (1000))) {
                if ((SQ103_GOWITHRUPERT) == (0)) {
                    SQ103_FOUNDMAIWENALONE = 1;
                    PRINTD("Sam znalaz³em Maiwen");
                };
                SQ103_MAIWENFIGHT();
                SQ103_BEASTROAR = TRUE;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ103)) == (LOG_SUCCESS)) {
        if ((KAPITEL) >= (3)) {
            if ((SQ103_TELEPORTRUPERTTOCITY) == (FALSE)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_100007_RUPERT)) >= (0xbb8)) {
                    SQ103_TELEPORTRUPERTTOCITY = TRUE;
                    B_STARTOTHERROUTINE(NONE_100007_RUPERT, "CITY");
                    TELEPORTNPCTOWP(0xc95d, NONE_100007_RUPERT.WP);
                };
            };
        };
    };
}

