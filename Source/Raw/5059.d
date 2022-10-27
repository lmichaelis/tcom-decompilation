func void EVENTSMANAGER_TRAPMASTERGAME() {
    if ((RND_GAMEMASTER_M2_CH2) == (2)) {
        if ((FMQ001_INSTRUCTORRUN) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_GAMEMASTER_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                if ((TRAP_SPAWNGAMEMASTER) == (FALSE)) {
                    TRAP_SPAWNGAMEMASTER = TRUE;
                    PRINTD("Mistrz gry zaprasza cię do gry w M2");
                    WLD_INSERTNPC(0xcd6c, RNG_GAMEMASTER_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

