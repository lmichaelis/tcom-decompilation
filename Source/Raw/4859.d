func void EVENTSMANAGER_NS27() {
    if ((((NS27_DESPAWNED) == (FALSE)) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) == (FALSE))) && (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_SUCCESS)) == (FALSE))) {
        if ((RND_NS04_M7) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS27_WAYPOINT)) <= (RNG_RADIUS_VERYLARGE)) {
                if ((NS27_SPAWNED) == (FALSE)) {
                    PRINTD("Do��cz do Volkera w M7 (bli�ej portu)");
                    SQ505_SPAWNVOLKERMAN_M7();
                    NS27_DESPAWNDAY = WLD_GETDAY();
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS27_SPAWNED = TRUE;
                };
            };
        };
        if ((NS27_SPAWNED) == (TRUE)) {
            if ((NS27_DESPAWNDAY) <= ((WLD_GETDAY()) - (3))) {
                PRINTD("M�wca Volkera (bli�ej portu) i s�uchacze niebawem p�jd�...");
                SQ505_REMOVEVOLKERMAN_M7();
                NS27_DESPAWNED = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

