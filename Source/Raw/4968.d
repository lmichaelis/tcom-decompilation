func void EVENTSMANAGER_RNG_VSKEEVENT04() {
    if ((RNG_VSKELETONEVENT04_SPAWNED) == (0)) {
        if ((RNG_VSKELETONEVENT04_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VSKEEVENT_04_WAYPOINT)) >= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VSKELETONEVENT04) == (2)) {
                    WLD_INSERTNPC(0xe82e, RNG_VSKEEVENT_04_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT04_SPAWNED = 1;
                    PRINTD("SZKIELET wojownik na spocie 4!");
                } else if ((RNG_VSKELETONEVENT04) == (4)) {
                    WLD_INSERTNPC(0xe830, RNG_VSKEEVENT_04_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT04_SPAWNED = 2;
                    PRINTD("SZKIELET skrytob�jca na spocie 4!");
                } else if ((RNG_VSKELETONEVENT04) == (6)) {
                    WLD_INSERTNPC(0xe832, RNG_VSKEEVENT_04_WAYPOINT);
                    RNG_VSKELETONCOUNTER = (RNG_VSKELETONCOUNTER) + (1);
                    RNG_VSKELETONEVENT04_SPAWNED = 3;
                    PRINTD("SZKIELET �ucznik na spocie 4!");
                };
            };
        };
    };
    if ((RNG_VSKELETONEVENT04_SPAWNED) == (1)) {
        if (NPC_ISDEAD(SKE_13957_WARRIOR)) {
            RNG_VSKELETONEVENT04_SPAWNED = 0;
            RNG_VSKELETONEVENT04_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET wojownik ze spota 4 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT04_SPAWNED) == (2)) {
        if (NPC_ISDEAD(SKE_13958_ROGUE)) {
            RNG_VSKELETONEVENT04_SPAWNED = 0;
            RNG_VSKELETONEVENT04_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET skrytob�jca ze spota 4 is dead!");
        };
    };
    if ((RNG_VSKELETONEVENT04_SPAWNED) == (3)) {
        if (NPC_ISDEAD(SKE_13959_ARCHER)) {
            RNG_VSKELETONEVENT04_SPAWNED = 0;
            RNG_VSKELETONEVENT04_HOUR = WLD_GETHOUR();
            PRINTD("SZKIELET �ucznik ze spota 4 is dead!");
        };
    };
}

