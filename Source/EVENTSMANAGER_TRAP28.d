func void EVENTSMANAGER_TRAP28() {
    if ((((NPC_GETDISTTOWP(HERO, RNG_TRAP28_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE2)) && ((TRAP28_SPAWNED) == (FALSE))) && ((RND_TRAP02_M7_CH3) == (1))) {
        TRAP28_SPAWNED = TRUE;
        RANDOMEVENT_SPAWNCOUNTER();
        WLD_INSERTNPC(55382, RNG_TRAP28_WAYPOINT);
        PRINTD("Atak uchod�cy (II) !");
    };
}
