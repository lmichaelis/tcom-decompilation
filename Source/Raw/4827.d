func void EVENTSMANAGER_CULUSSPAWNP2() {
    if ((CULUS_SPAWN01) == (FALSE)) {
        if (((CULUS_LEVEL) == (1)) && ((DAYOFCULUSFIGHT01) != (WLD_GETDAY()))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CULUS1_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE)) {
                if (!(NPC_ISDEAD(NONE_11179_CULUS))) {
                    B_REMOVENPC(0xd70c);
                };
                WLD_INSERTNPC(0xd70f, RNG_CULUS1_WAYPOINT);
                PRINTD("Culus opracowa³ zemste w m3");
                RANDOMEVENT_SPAWNCOUNTER();
                CULUS_SPAWN01 = TRUE;
            };
        };
    };
}

