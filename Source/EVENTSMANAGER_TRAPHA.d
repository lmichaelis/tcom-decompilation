func void EVENTSMANAGER_TRAPHA() {
    if ((TRAPHA_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_M5_HA) == (1)) {
            TRAPHA_SPAWNED = TRUE;
            WLD_INSERTNPC(53835, "PARTM5_HEROHOUSE_HA_01");
            WLD_INSERTNPC(53837, "PARTM5_HEROHOUSE_HA_02");
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Marvin sam w domu");
        };
    };
}

