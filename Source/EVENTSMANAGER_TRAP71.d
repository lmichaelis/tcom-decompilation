func void EVENTSMANAGER_TRAP71() {
    if ((RND_TRAP_71_CH4) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP71_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
            if ((TRAP71_SPAWNED) == (FALSE)) {
                PRINTD("Ratuj farmerk�!");
                PRINTD("Kto� j� bije w parcie 12!");
                WLD_INSERTNPC(57785, "PART12_BLANKA_MANDELA_01");
                WLD_INSERTNPC(57788, "PART12_EARL_STAND");
                WLD_INSERTNPC(57791, "PART12_BLANKA_SCARED");
                WLD_INSERTNPC(57772, RNG_TRAP03_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP71_SPAWNED = TRUE;
            };
        };
    };
}

