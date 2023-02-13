func void EVENTSMANAGER_RINGEVENT() {
    if ((M7_TRAPRING_ACTIVATED) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 38003)) >= (1)) {
            M7_TRAPRING_ACTIVATED = TRUE;
            WLD_INSERTNPC(55296, RNG_M7RINGTRAP_WAYPOINT);
            PRINTD("oddawaj pierœcieñ!");
        };
    };
}

