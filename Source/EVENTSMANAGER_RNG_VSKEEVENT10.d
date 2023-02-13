func void EVENTSMANAGER_RNG_VSKEEVENT10() {
    if ((RNG_VSKELETONEVENT10_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT10_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_10_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT10) == (2)) {
                    WLD_INSERTNPC(59474, RNG_VSKEEVENT_10_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT10_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 10!");
                } else if ((RNG_VSKELETONEVENT10) == (4)) {
                    WLD_INSERTNPC(59476, RNG_VSKEEVENT_10_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT10_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 10!");
                } else if ((RNG_VSKELETONEVENT10) == (6)) {
                    WLD_INSERTNPC(59478, RNG_VSKEEVENT_10_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT10_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 10!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT10_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13975_WARRIOR)) {
            RNG_VSKELETONEVENT10_SPAWNED = 0;
            RNG_VSKELETONEVENT10_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 10 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT10_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13976_ROGUE)) {
            RNG_VSKELETONEVENT10_SPAWNED = 0;
            RNG_VSKELETONEVENT10_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 10 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT10_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13977_ARCHER)) {
            RNG_VSKELETONEVENT10_SPAWNED = 0;
            RNG_VSKELETONEVENT10_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 10 is dead!");
        };
    };
}

