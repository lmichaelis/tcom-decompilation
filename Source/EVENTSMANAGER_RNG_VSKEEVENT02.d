func void EVENTSMANAGER_RNG_VSKEEVENT02() {
    if ((RNG_VSKELETONEVENT02_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT02_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_02_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT02) == (2)) {
                    WLD_INSERTNPC(59426, RNG_VSKEEVENT_02_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT02_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 2!");
                } else if ((RNG_VSKELETONEVENT02) == (4)) {
                    WLD_INSERTNPC(59428, RNG_VSKEEVENT_02_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT02_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 2!");
                } else if ((RNG_VSKELETONEVENT02) == (6)) {
                    WLD_INSERTNPC(59430, RNG_VSKEEVENT_02_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT02_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 2!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT02_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13951_WARRIOR)) {
            RNG_VSKELETONEVENT02_SPAWNED = 0;
            RNG_VSKELETONEVENT02_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 2 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT02_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13952_ROGUE)) {
            RNG_VSKELETONEVENT02_SPAWNED = 0;
            RNG_VSKELETONEVENT02_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 2 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT02_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13953_ARCHER)) {
            RNG_VSKELETONEVENT02_SPAWNED = 0;
            RNG_VSKELETONEVENT02_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 2 is dead!");
        };
    };
}

