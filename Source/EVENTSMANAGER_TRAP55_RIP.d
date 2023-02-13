func void EVENTSMANAGER_TRAP55_RIP() {
    if ((TRAP55_SPAWNED) == (TRUE)) {
        if (NPC_KNOWSINFO(HERO, 85677)) {
            if (!(NPC_ISDEAD(BAU_13761_EDMUND))) {
                if (((NPC_GETDISTTOWP(HERO, RNG_TRAP55_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE3)) && ((NPC_GETDISTTONPC(HERO, BAU_13761_EDMUND)) >= (RNG_RADIUS_NORMALMORE3))) {
                    PRINTD("¯egnaj Edmundzie.");
                    WLD_INSERTNPC(50678, RNG_TRAP55_WAYPOINT);
                    WLD_INSERTNPC(50678, "PART12_EDMUND_EVENT_02");
                    B_KILLNPC(57761);
                    if (!(NPC_ISDEAD(SHEEP_ENIU))) {
                        B_KILLNPC(50802);
                    };
                    TRAP55_SPAWNED = 2;
                };
            };
        };
    };
}

