func void EVENTSMANAGER_TRAP23() {
    if ((RND_TRAP02_P4_CH3) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP23_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((TRAP23_SPAWNED) == (FALSE)) {
                TRAP23_SPAWNED = TRUE;
                PRINTD("Handlarz i jego ochroniarz s¹ w opa³ach - part 4");
                WLD_INSERTNPC(55992, RNG_TRAP23_WAYPOINT);
                WLD_INSERTNPC(55997, RNG_TRAP23_WAYPOINT);
                WLD_INSERTNPC(55970, "PART4_PATH_81");
                WLD_INSERTNPC(55972, "PART4_PATH_82");
                WLD_INSERTNPC(55974, "PART4_PATH_83");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

