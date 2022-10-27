func void EVENTSMANAGER_NS68() {
    if (((SQ411_MARVINGOTKEYS) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ411)) == (LOG_SUCCESS))) {
        if ((RND_NS06_M5) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS68_WAYPOINT)) >= (RNG_RADIUS_BIG2)) {
                if ((NS68_SPAWNED) == (FALSE)) {
                    PRINTD("Nie moge spaæ bo sprzedaje komodê");
                    PRINTD("W M5");
                    WLD_INSERTNPC(0xd25e, RNG_NS68_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS68_SPAWNED = 1;
                };
            };
        };
    };
}

