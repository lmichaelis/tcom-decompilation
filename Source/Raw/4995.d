func void EVENTSMANAGER_TRAP16() {
    if ((TRAP16_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP16_WAYPOINT)) <= (RNG_RADIUS_LESSTHENMEDIUM)) && ((RND_TRAP_M4_CH3) == (1))) {
            TRAP16_SPAWNED = TRUE;
            WLD_INSERTNPC(0xd108, "PARTM4_TAVERN_07");
            WLD_INSERTNPC(0xd10b, RNG_TRAP16_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("O bogowie! Walka w Pêkniêtej Strunie!");
        };
    };
}

