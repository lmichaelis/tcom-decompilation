func void EVENTSMANAGER_RNG_CRAEVENT03() {
    if ((RNG_MCRAWLEREVENT03_SPAWNED) == (0)) {
        if ((RNG_MCRAWLEREVENT03_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CRAEVENT_03_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_MCRAWLEREVENT03) == (2)) {
                    WLD_INSERTNPC(0xe6e0, RNG_CRAEVENT_03_WAYPOINT);
                    RNG_MCRAWLERCOUNTER = (RNG_MCRAWLERCOUNTER) + (1);
                    RNG_MCRAWLEREVENT03_SPAWNED = 1;
                    PRINTD("Pe³zacz wojownik na spocie 3!");
                };
            };
        };
    };
    if ((RNG_MCRAWLEREVENT03_SPAWNED) == (1)) {
        if (NPC_ISDEAD(CRA_14052_WARRIOR)) {
            RNG_MCRAWLEREVENT03_SPAWNED = 0;
            RNG_MCRAWLEREVENT03_HOUR = WLD_GETHOUR();
            PRINTD("Pe³zacz wojownik ze spota 1 is dead!");
        };
    };
}

