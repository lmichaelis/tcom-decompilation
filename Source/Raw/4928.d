func void EVENTSMANAGER_RNG_PAEVENT03() {
    if ((RNG_PAEVENT03_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT03) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT03_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT03_SPAWNED) == (FALSE)) {
                    PRINTD("Kto� tu jest");
                    WLD_INSERTNPC(0xdb3b, RNG_PAEVENT03_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT03_SPAWNED = 1;
                };
            };
        };
    };
}

