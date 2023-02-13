func void EVENTSMANAGER_CULUSSPAWNP2() {
    if ((CULUS_SPAWN01) == (FALSE)) {
        if (((CULUS_LEVEL) == (1)) && ((DAYOFCULUSFIGHT01) != (WLD_GETDAY()))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CULUS1_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE)) {
                if (!(NPC_ISDEAD(NONE_11179_CULUS))) {
                    B_REMOVENPC(55052);
                };
                WLD_INSERTNPC(55055, RNG_CULUS1_WAYPOINT);
                PRINTD("Culus opracowa³ zemste w m3");
                RANDOMEVENT_SPAWNCOUNTER();
                CULUS_SPAWN01 = TRUE;
            };
        };
    };
}

