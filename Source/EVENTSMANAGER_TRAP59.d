func void EVENTSMANAGER_TRAP59() {
    if ((TRAP59_SPAWNED) == (FALSE)) {
        if ((RND_TRAP02_P17_CH4) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP59_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if ((KAPITEL) == (4)) {
                    WLD_INSERTNPC(58908, RNG_TRAP59_WAYPOINT);
                    PRINTD("Wœciek³y kowal w P17");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP59_SPAWNED = TRUE;
                };
            };
        };
    };
}

