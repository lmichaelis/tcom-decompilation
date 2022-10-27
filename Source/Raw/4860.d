func void EVENTSMANAGER_NS28() {
    if ((((NS28_DESPAWNED) == (FALSE)) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) == (FALSE))) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_SUCCESS)) == (FALSE))) {
        if ((RND_NS04_M3) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS28_WAYPOINT)) <= (RNG_RADIUS_VERYLARGE)) {
                if ((NS28_SPAWNED) == (FALSE)) {
                    PRINTD("Do³¹cz do Volkera w M3)");
                    SQ505_SPAWNVOLKERMAN_M3();
                    NS28_DESPAWNDAY = WLD_GETDAY();
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS28_SPAWNED = TRUE;
                };
            };
        };
        if ((NS28_SPAWNED) == (TRUE)) {
            if ((NS28_DESPAWNDAY) <= ((WLD_GETDAY()) - (3))) {
                PRINTD("Mówca Volkera (M3) i s³uchacze niebawem pójd¹...");
                SQ505_REMOVEVOLKERMAN_M3();
                NS28_DESPAWNED = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

