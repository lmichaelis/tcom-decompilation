func void EVENTSMANAGER_CULUSSPAWNP3() {
    if ((CULUS_SPAWN02) == (FALSE)) {
        if (((CULUS_LEVEL) == (2)) && ((DAYOFCULUSFIGHT02) != (WLD_GETDAY()))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CULUS2_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE)) {
                if (!(NPC_ISDEAD(NONE_11179_CULUS_V1))) {
                    B_REMOVENPC(0xd70f);
                };
                PRINTD("Culus próbuje jeszcze raz w m2");
                WLD_INSERTNPC(0xd712, RNG_CULUS2_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                CULUS_SPAWN02 = TRUE;
            };
        };
    };
}

