func void EVENTSMANAGER_SCAVTRAP() {
    if ((SCAV_TRAP_ACTIVATED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAPSCAV_WAYPOINT)) <= (RNG_RADIUS_VERYCLOSE)) {
            SCAV_TRAP_ACTIVATED = TRUE;
            WLD_INSERTNPC(50759, "PART3_FIREPLACE_01");
            PRINTD("Kukuryku");
        };
    };
}

