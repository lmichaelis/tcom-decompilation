func void EVENTSMANAGER_NS01() {
    if ((RND_NS01_M6) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS01_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if ((NS01_SPAWNED) == (FALSE)) {
                    PRINTD("Co zrobimy z pijanym marynarzem");
                    PRINTD("Z samego rana w M6?");
                    WLD_INSERTNPC(54796, "HARBOUR_DRUNKEN_SAILOR_01");
                    WLD_INSERTNPC(54800, "HARBOUR_DRUNKEN_SAILOR_02");
                    WLD_INSERTNPC(54792, "HARBOUR_DRUNKEN_SAILOR_03");
                    WLD_INSERTNPC(54804, "HARBOUR_DRUNKEN_SAILOR_04");
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS01_SPAWNED = 1;
                };
            };
        };
    };
}

