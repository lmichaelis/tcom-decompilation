func void EVENTSMANAGER_TRAP38() {
    if ((RND_TRAP_P6_CH5) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP38_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
            if ((TRAP38_SPAWNED) == (FALSE)) {
                PRINTD("Szkielet mag z filmu o magii idzie ci wpierdoliæ (part 6)");
                WLD_INSERTNPC(56216, RNG_TRAP38_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP38_SPAWNED = 1;
            };
        };
    };
}

