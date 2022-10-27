func void EVENTSMANAGER_TRAP55_RIP() {
    if ((TRAP55_SPAWNED) == (TRUE)) {
        if (NPC_KNOWSINFO(HERO, 0x14ead)) {
            if (!(NPC_ISDEAD(BAU_13761_EDMUND))) {
                if (((NPC_GETDISTTOWP(HERO, RNG_TRAP55_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE3)) && ((NPC_GETDISTTONPC(HERO, BAU_13761_EDMUND)) >= (RNG_RADIUS_NORMALMORE3))) {
                    PRINTD("¯egnaj Edmundzie.");
                    WLD_INSERTNPC(0xc5f6, RNG_TRAP55_WAYPOINT);
                    WLD_INSERTNPC(0xc5f6, "PART12_EDMUND_EVENT_02");
                    B_KILLNPC(0xe1a1);
                    if (!(NPC_ISDEAD(SHEEP_ENIU))) {
                        B_KILLNPC(0xc672);
                    };
                    TRAP55_SPAWNED = 2;
                };
            };
        };
    };
}

