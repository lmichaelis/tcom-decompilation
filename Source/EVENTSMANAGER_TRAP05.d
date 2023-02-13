func void EVENTSMANAGER_TRAP05() {
    if ((RND_TRAP_M1_CH4) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP05_WAYPOINT)) <= (RNG_RADIUS_VERYFAR)) {
            if ((TRAP05_SPAWNED) == (FALSE)) {
                PRINTD("Miejsce meneli w m1 zaje�y zbiry");
                WLD_INSERTNPC(52270, "PARTM2_PATH_126_BENCH");
                WLD_INSERTNPC(52272, RNG_TRAP04_WAYPOINT);
                if (!(NPC_ISDEAD(VLK_11075_HOBO))) {
                    B_REMOVENPC(51891);
                };
                if (!(NPC_ISDEAD(VLK_11076_HOBO))) {
                    B_REMOVENPC(51893);
                };
                if (!(NPC_ISDEAD(VLK_11077_HOBO))) {
                    B_REMOVENPC(51895);
                };
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP05_SPAWNED = 1;
            };
        };
    };
}

