func void EVENTSMANAGER_TRAP45() {
    if ((TRAP45_SPAWNED) == (FALSE)) {
        if (((RND_TRAP_P16_CH4) == (1)) && ((SQ417_BLOCKRANDOMEVENTS) == (FALSE))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP45_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP45_SPAWNED = TRUE;
                WLD_INSERTNPC(0xe40e, RNG_TRAP45_WAYPOINT);
                WLD_INSERTNPC(0xe411, "WOLFSDEN_PATH_08B");
                RANDOMEVENT_SPAWNCOUNTER();
                PRINTD("Kibole w wilczym le¿u! ");
            };
        };
    };
}

