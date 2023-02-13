func void EVENTSMANAGER_TRAP40() {
    if ((TRAP40_SPAWNED) == (FALSE)) {
        if (((WLD_GETDAY()) >= (66)) && ((RND_TRAP_DEMON) == (6))) {
            PRINTD("Diablo kroczy po ziemi...");
            WLD_INSERTNPC(50361, "P5_SECRETDEMON");
            RANDOMEVENT_SPAWNCOUNTER();
            TRAP40_SPAWNED = TRUE;
        };
    };
}

