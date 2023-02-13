func void EVENTSMANAGER_RNG_VSKEEVENT06() {
    if ((RNG_VSKELETONEVENT06_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT06_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_06_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT06) == (2)) {
                    WLD_INSERTNPC(59450, RNG_VSKEEVENT_06_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT06_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 6!");
                } else if ((RNG_VSKELETONEVENT06) == (4)) {
                    WLD_INSERTNPC(59452, RNG_VSKEEVENT_06_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT06_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 6!");
                } else if ((RNG_VSKELETONEVENT06) == (6)) {
                    WLD_INSERTNPC(59454, RNG_VSKEEVENT_06_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT06_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 6!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT06_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13963_WARRIOR)) {
            RNG_VSKELETONEVENT06_SPAWNED = 0;
            RNG_VSKELETONEVENT06_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 6 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT06_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13964_ROGUE)) {
            RNG_VSKELETONEVENT06_SPAWNED = 0;
            RNG_VSKELETONEVENT06_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 6 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT06_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13965_ARCHER)) {
            RNG_VSKELETONEVENT06_SPAWNED = 0;
            RNG_VSKELETONEVENT06_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 6 is dead!");
        };
    };
}

