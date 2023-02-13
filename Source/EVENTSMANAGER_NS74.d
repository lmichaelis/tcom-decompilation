func void EVENTSMANAGER_NS74() {
    if ((HERO.LEVEL) >= (50)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS74_WAYPOINT)) >= (RNG_RADIUS_BIG2)) {
            if ((NS74_SPAWNED) == (FALSE)) {
                PRINTD("Saradoc w part 3");
                WLD_INSERTNPC(55819, RNG_TRAP19_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS74_SPAWNED = TRUE;
            };
        };
    };
}

