func void EVENTSMANAGER_TRAP20() {
    if ((TRAP20_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P12_CH1) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP20_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP20_SPAWNED = TRUE;
                PRINTD("Na³ogowi palacze kopc¹ w wiosce");
                WLD_INSERTNPC(0xe188, RNG_TRAP20_WAYPOINT);
                WLD_INSERTNPC(0xe18d, "VILLAGE_POORPLACE_18");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

