func void EVENTSMANAGER_NS26() {
    if ((((NS26_DESPAWNED) == (FALSE)) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) == (FALSE))) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_SUCCESS)) == (FALSE))) {
        if ((RND_NS03_M7) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS26_WAYPOINT)) <= (RNG_RADIUS_VERYLARGE)) {
                if ((NS26_SPAWNED) == (FALSE)) {
                    PRINTD("Do��cz do Volkera w M7 (slumsy)");
                    SQ505_SPAWNVOLKERMAN_SLUMS();
                    NS26_DESPAWNDAY = WLD_GETDAY();
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS26_SPAWNED = TRUE;
                };
            };
        };
        if ((NS26_SPAWNED) == (TRUE)) {
            if ((NS26_DESPAWNDAY) <= ((WLD_GETDAY()) - (3))) {
                PRINTD("M�wca Volkera (slumsy) i s�uchacze niebawem p�jd�...");
                SQ505_REMOVEVOLKERMAN_SLUMS();
                NS26_DESPAWNED = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

