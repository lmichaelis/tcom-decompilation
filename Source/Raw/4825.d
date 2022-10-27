func void EVENTSMANAGER_CASTAWAYEVENT() {
    if ((NS20_SPAWNED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS20_WAYPOINT)) <= (RNG_RADIUS_VERYCLOSE)) {
            NS20_SPAWNED = TRUE;
            WLD_INSERTNPC(0xe22c, "PART14_ISLAND02_PATH08");
            PRINTD("Castaway, poza plikiem zen");
        };
    };
}

