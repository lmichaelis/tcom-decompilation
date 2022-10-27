func void EVENTSMANAGER_RNG_VSKEEVENT08() {
    if ((RNG_VSKELETONEVENT08_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT08_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_08_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT08) == (2)) {
                    WLD_INSERTNPC(0xe846, RNG_VSKEEVENT_08_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT08_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 8!");
                } else if ((RNG_VSKELETONEVENT08) == (4)) {
                    WLD_INSERTNPC(0xe848, RNG_VSKEEVENT_08_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT08_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 8!");
                } else if ((RNG_VSKELETONEVENT08) == (6)) {
                    WLD_INSERTNPC(0xe84a, RNG_VSKEEVENT_08_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT08_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 8!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT08_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13969_WARRIOR)) {
            RNG_VSKELETONEVENT08_SPAWNED = 0;
            RNG_VSKELETONEVENT08_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 8 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT08_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13970_ROGUE)) {
            RNG_VSKELETONEVENT08_SPAWNED = 0;
            RNG_VSKELETONEVENT08_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 8 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT08_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13971_ARCHER)) {
            RNG_VSKELETONEVENT08_SPAWNED = 0;
            RNG_VSKELETONEVENT08_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 8 is dead!");
        };
    };
}

