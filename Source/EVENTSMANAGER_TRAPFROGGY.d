func void EVENTSMANAGER_TRAPFROGGY() {
    if ((FROGGY_TRAP_ACTIVATED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAPFROGGY_WAYPOINT)) <= (RNG_RADIUS_VERYCLOSE)) {
            FROGGY_TRAP_ACTIVATED = TRUE;
            WLD_INSERTNPC(50408, "PART14_FROGGYTRAP_01");
            WLD_INSERTNPC(50409, "PART14_FROGGYTRAP_02");
            PRINTD("Rere-kumkum skurwysynie");
        };
    };
}

