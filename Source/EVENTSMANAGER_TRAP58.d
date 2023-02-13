func void EVENTSMANAGER_TRAP58() {
    if ((RND_TRAP02_M6_CH2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP58_WAYPOINT)) <= (RNG_RADIUS_MORETHENNORMAL)) {
            if ((TRAP58_SPAWNED) == (FALSE)) {
                PRINTD("Pijak chce Ciê biæ.");
                WLD_INSERTNPC(54787, RNG_TRAP58_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP58_SPAWNED = 1;
            };
        };
    };
}

