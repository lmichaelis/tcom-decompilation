func void EVENTSMANAGER_TRAP52() {
    if ((TRAP52_SPAWNED) == (0)) {
        if ((RND_TRAP_P9_CH2) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP52_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if (!(NPC_ISDEAD(MIL_6267_SALVI))) {
                    if (((KAPITEL) == (2)) && ((HERO.GUILD) == (GIL_SLD))) {
                        TRAP52_SPAWNED = 2;
                        WLD_INSERTNPC(0xdf04, RNG_TRAP52_WAYPOINT);
                        WLD_INSERTNPC(0xdf07, "PART9_PATH_RENEGADE_EVENT_02");
                        PRINTD("Renegaci knują przy Winnicy");
                        RANDOMEVENT_SPAWNCOUNTER();
                    } else if (((KAPITEL) == (3)) && ((HERO.GUILD) == (GIL_MIL))) {
                        TRAP52_SPAWNED = 1;
                        WLD_INSERTNPC(0xdf04, RNG_TRAP52_WAYPOINT);
                        WLD_INSERTNPC(0xdf07, "PART9_PATH_RENEGADE_EVENT_02");
                        PRINTD("Renegaci knują przy Winnicy");
                        RANDOMEVENT_SPAWNCOUNTER();
                    };
                };
            };
        };
    };
}

