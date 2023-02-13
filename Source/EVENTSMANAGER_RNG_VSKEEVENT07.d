func void EVENTSMANAGER_RNG_VSKEEVENT07() {
    if ((RNG_VSKELETONEVENT07_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT07_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_07_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT07) == (2)) {
                    WLD_INSERTNPC(59456, RNG_VSKEEVENT_07_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT07_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 7!");
                } else if ((RNG_VSKELETONEVENT07) == (4)) {
                    WLD_INSERTNPC(59458, RNG_VSKEEVENT_07_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT07_SPAWNED = 2;
                    PRINTD("SZKIELET skrytobójca na spocie 7!");
                } else if ((RNG_VSKELETONEVENT07) == (6)) {
                    WLD_INSERTNPC(59460, RNG_VSKEEVENT_07_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT07_SPAWNED = 3;
                    PRINTD("SZKIELET ³ucznik na spocie 7!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT07_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13966_WARRIOR)) {
            RNG_VSKELETONEVENT07_SPAWNED = 0;
            RNG_VSKELETONEVENT07_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 7 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT07_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13967_ROGUE)) {
            RNG_VSKELETONEVENT07_SPAWNED = 0;
            RNG_VSKELETONEVENT07_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytobójca ze spota 7 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT07_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13968_ARCHER)) {
            RNG_VSKELETONEVENT07_SPAWNED = 0;
            RNG_VSKELETONEVENT07_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET ³ucznik ze spota 7 is dead!");
        };
    };
}

