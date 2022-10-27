func void EVENTSMANAGER_RNG_CRAEVENT01() {
    if ((RNG_MCRAWLEREVENT01_SPAWNED) == (0)) {
        if ((RNG_MCRAWLEREVENT01_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CRAEVENT_01_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_MCRAWLEREVENT01) == (2)) {
                    WLD_INSERTNPC(0xe6dc, RNG_CRAEVENT_01_WAYPOINT);
                    RNG_MCRAWLERCOUNTER = (RNG_MCRAWLERCOUNTER) + (1);
                    RNG_MCRAWLEREVENT01_SPAWNED = 1;
                    PRINTD("Pe³zacz wojownik na spocie 1!");
                };
            };
        };
    };
    if ((RNG_MCRAWLEREVENT01_SPAWNED) == (1)) {
        if (NPC_ISDEAD(CRA_14050_WARRIOR)) {
            RNG_MCRAWLEREVENT01_SPAWNED = 0;
            RNG_MCRAWLEREVENT01_HOUR = WLD_GETHOUR();
            PRINTD("Pe³zacz wojownik ze spota 1 is dead!");
        };
    };
}

