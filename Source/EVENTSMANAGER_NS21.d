func void EVENTSMANAGER_NS21() {
    if ((LOG_GETSTATUS(MIS_Q305)) != (LOG_RUNNING)) {
        if ((NS21_SPAWNED) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS21_WAYPOINT)) <= (RNG_RADIUS_VERYCLOSE2)) {
                NS21_SPAWNED = TRUE;
                WLD_INSERTNPC(58540, "PART17_IZAAC_NEWTON_01");
                TELEPORTNPCTOWP(58540, "PART17_IZAAC_NEWTON_02");
                WLD_INSERTNPC(50611, "PART17_TALKING_MEATBUG");
                PRINTD("It's raining man! (w parcie 17)");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

