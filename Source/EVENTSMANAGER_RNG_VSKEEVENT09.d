func void EVENTSMANAGER_RNG_VSKEEVENT09() {
    if ((RNG_VSKELETONEVENT09_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT09_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_09_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT09) == (2)) {
                    WLD_INSERTNPC(59468, RNG_VSKEEVENT_09_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT09_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 9!");
                } else if ((RNG_VSKELETONEVENT09) == (4)) {
                    WLD_INSERTNPC(59470, RNG_VSKEEVENT_09_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT09_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 9!");
                } else if ((RNG_VSKELETONEVENT09) == (6)) {
                    WLD_INSERTNPC(59472, RNG_VSKEEVENT_09_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT09_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 9!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT09_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13972_WARRIOR)) {
            RNG_VSKELETONEVENT09_SPAWNED = 0;
            RNG_VSKELETONEVENT09_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 9 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT09_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13973_ROGUE)) {
            RNG_VSKELETONEVENT09_SPAWNED = 0;
            RNG_VSKELETONEVENT09_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 9 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT09_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13974_ARCHER)) {
            RNG_VSKELETONEVENT09_SPAWNED = 0;
            RNG_VSKELETONEVENT09_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 9 is dead!");
        };
    };
}

