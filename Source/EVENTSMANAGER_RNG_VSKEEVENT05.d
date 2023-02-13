func void EVENTSMANAGER_RNG_VSKEEVENT05() {
    if ((RNG_VSKELETONEVENT05_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT05_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_05_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT05) == (2)) {
                    WLD_INSERTNPC(59444, RNG_VSKEEVENT_05_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT05_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 5!");
                } else if ((RNG_VSKELETONEVENT05) == (4)) {
                    WLD_INSERTNPC(59446, RNG_VSKEEVENT_05_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT05_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 5!");
                } else if ((RNG_VSKELETONEVENT05) == (6)) {
                    WLD_INSERTNPC(59448, RNG_VSKEEVENT_05_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT05_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 5!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT05_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13960_WARRIOR)) {
            RNG_VSKELETONEVENT05_SPAWNED = 0;
            RNG_VSKELETONEVENT05_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 5 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT05_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13961_ROGUE)) {
            RNG_VSKELETONEVENT05_SPAWNED = 0;
            RNG_VSKELETONEVENT05_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 5 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT05_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13962_ARCHER)) {
            RNG_VSKELETONEVENT05_SPAWNED = 0;
            RNG_VSKELETONEVENT05_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 5 is dead!");
        };
    };
}

