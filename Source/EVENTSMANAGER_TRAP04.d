func void EVENTSMANAGER_TRAP04() {
    if ((RND_TRAP_M2_CH4) == (1)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP04_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((LOG_GETSTATUS(MIS_QM301)) != (LOG_RUNNING))) {
            if ((TRAP04_SPAWNED) == (FALSE)) {
                PRINTD("Miejsce meneli w m2 zajê³y zbiry");
                WLD_INSERTNPC(52580, "PARTM2_PATH_126_BENCH");
                WLD_INSERTNPC(52582, RNG_TRAP04_WAYPOINT);
                if (!(NPC_ISDEAD(VLK_11098_HOBO))) {
                    B_REMOVENPC(52605);
                };
                if (!(NPC_ISDEAD(VLK_11099_HOBO))) {
                    B_REMOVENPC(52608);
                };
                if (!(NPC_ISDEAD(VLK_11100_HOBO))) {
                    B_REMOVENPC(52611);
                };
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP04_SPAWNED = 1;
            };
        };
    };
}

