func void EVENTSMANAGER_RNG_VSKEEVENT03() {
    if ((RNG_VSKELETONEVENT03_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT03_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_03_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT03) == (2)) {
                    WLD_INSERTNPC(59432, RNG_VSKEEVENT_03_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT03_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 3!");
                } else if ((RNG_VSKELETONEVENT03) == (4)) {
                    WLD_INSERTNPC(59434, RNG_VSKEEVENT_03_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT03_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 3!");
                } else if ((RNG_VSKELETONEVENT03) == (6)) {
                    WLD_INSERTNPC(59436, RNG_VSKEEVENT_03_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT03_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 3!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT03_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13954_WARRIOR)) {
            RNG_VSKELETONEVENT03_SPAWNED = 0;
            RNG_VSKELETONEVENT03_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 3 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT03_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13955_ROGUE)) {
            RNG_VSKELETONEVENT03_SPAWNED = 0;
            RNG_VSKELETONEVENT03_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 3 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT03_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13956_ARCHER)) {
            RNG_VSKELETONEVENT03_SPAWNED = 0;
            RNG_VSKELETONEVENT03_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 3 is dead!");
        };
    };
}

