func void EVENTSMANAGER_NS15() {
    if ((RND_NS01_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS15_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS15_SPAWNED) == (FALSE)) {
                PRINTD("(Prawie) darmowe miêso w parcie 12");
                WLD_INSERTNPC(0xe192, RNG_NS15_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS15_SPAWNED = 1;
            };
        };
    };
}

