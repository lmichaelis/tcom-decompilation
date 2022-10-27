func void EVENTSMANAGER_TRAP53() {
    if ((TRAP53_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P17_CH4) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP53_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if ((KAPITEL) == (4)) {
                    WLD_INSERTNPC(0xe61f, RNG_TRAP53_WAYPOINT);
                    PRINTD("Przyjacielskie obijanie mordy w P17");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP53_SPAWNED = TRUE;
                };
            };
        };
    };
}

