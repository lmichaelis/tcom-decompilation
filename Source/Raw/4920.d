func void EVENTSMANAGER_RNG_CRAEVENT02() {
    if ((RNG_MCRAWLEREVENT02_SPAWNED) == (0)) {
        if ((RNG_MCRAWLEREVENT02_HOUR) != (WLD_GETHOUR())) {
            if ((NPC_GETDISTTOWP(HERO, RNG_CRAEVENT_02_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_MCRAWLEREVENT02) == (2)) {
                    WLD_INSERTNPC(0xe6de, RNG_CRAEVENT_02_WAYPOINT);
                    RNG_MCRAWLERCOUNTER = (RNG_MCRAWLERCOUNTER) + (1);
                    RNG_MCRAWLEREVENT02_SPAWNED = 1;
                    PRINTD("Pe³zacz wojownik na spocie 2!");
                };
            };
        };
    };
    if ((RNG_MCRAWLEREVENT02_SPAWNED) == (1)) {
        if (NPC_ISDEAD(CRA_14051_WARRIOR)) {
            RNG_MCRAWLEREVENT02_SPAWNED = 0;
            RNG_MCRAWLEREVENT02_HOUR = WLD_GETHOUR();
            PRINTD("Pe³zacz wojownik ze spota 2 is dead!");
        };
    };
}

