func void EVENTSMANAGER_TRAP60() {
    if ((TRAP60_SPAWNED) == (FALSE)) {
        if ((RND_TRAP02_P12_CH5) == (1)) {
            if ((BOUNTY_HYENA_SPAWN) != (1)) {
                if (((NPC_GETDISTTOWP(HERO, RNG_TRAP60_WAYPOINT)) <= (RNG_RADIUS_FAR)) && ((SQ118_EZEKIEL_SEARCHFLORA) == (3))) {
                    TRAP60_SPAWNED = TRUE;
                    PRINTD("Hieny cmnetarne w Silbach...");
                    WLD_INSERTNPC(0xe1b3, "VILLAGE_CEMETERY_11");
                    WLD_INSERTNPC(0xe1b6, RNG_TRAP60_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

