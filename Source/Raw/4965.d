func void EVENTSMANAGER_RNG_VSKEEVENT01() {
    if ((RNG_VSKELETONEVENT01_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT01_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_01_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT01) == (2)) {
                    WLD_INSERTNPC(0xe81c, RNG_VSKEEVENT_01_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT01_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 1!");
                } else if ((RNG_VSKELETONEVENT01) == (4)) {
                    WLD_INSERTNPC(0xe81e, RNG_VSKEEVENT_01_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT01_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 1!");
                } else if ((RNG_VSKELETONEVENT01) == (6)) {
                    WLD_INSERTNPC(0xe820, RNG_VSKEEVENT_01_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT01_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 1!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT01_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13948_WARRIOR)) {
            RNG_VSKELETONEVENT01_SPAWNED = 0;
            RNG_VSKELETONEVENT01_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 1 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT01_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13949_ROGUE)) {
            RNG_VSKELETONEVENT01_SPAWNED = 0;
            RNG_VSKELETONEVENT01_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 1 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT01_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13950_ARCHER)) {
            RNG_VSKELETONEVENT01_SPAWNED = 0;
            RNG_VSKELETONEVENT01_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 1 is dead!");
        };
    };
}

