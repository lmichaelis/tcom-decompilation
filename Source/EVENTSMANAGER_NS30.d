func void EVENTSMANAGER_NS30() {
    if ((RND_NS01_P11) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS30_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS30_SPAWNED) == (FALSE)) {
                PRINTD("Nasze randez-vous! Tylko w parcie 11!");
                WLD_INSERTNPC(57302, RNG_NS30_WAYPOINT);
                WLD_INSERTNPC(57290, "PART11_LOVERS_02");
                RANDOMEVENT_SPAWNCOUNTER();
                NS30_SPAWNED = 1;
            };
        };
    };
}

