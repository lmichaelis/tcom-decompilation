func void EVENTSMANAGER_TRAP44() {
    if ((TRAP44_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P11_CH4) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP44_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP44_SPAWNED = TRUE;
                PRINTD("Daryl Dixon walczy z zombiakami w parcie 11");
                RANDOMEVENT_SPAWNCOUNTER();
                WLD_INSERTNPC(57296, RNG_TRAP44_WAYPOINT);
                WLD_INSERTNPC(51144, "PART11_RANDOMEVENT_DD_02");
                WLD_INSERTNPC(51145, "PART11_RANDOMEVENT_DD_03");
                WLD_INSERTNPC(51145, "PART11_RANDOMEVENT_DD_03");
                WLD_INSERTNPC(51146, "PART11_RANDOMEVENT_DD_03");
            };
        };
    };
}

