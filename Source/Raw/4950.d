func void EVENTSMANAGER_RNG_SALVIISGONE() {
    if ((SALVITRAPS_DESPAWN) == (FALSE)) {
        if ((NPC_ISDEAD(MIL_6267_SALVI)) || ((LOG_GETSTATUS(MIS_QM401)) == (LOG_SUCCESS))) {
            if ((TRAP46_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13624_RENEGADE, TOT);
                B_REMOVENPC(0xcc35);
                PRINTD("Szpieg Salviego straci³ swoje mojo.");
            };
            if ((TRAP47_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13625_RENEGADE, TOT);
                B_REMOVENPC(0xd105);
                PRINTD("Szpieg Salviego is dead.");
            };
            if ((TRAP48_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13626_RENEGADE, TOT);
                B_REMOVENPC(0xcf6d);
                PRINTD("Szpieg Salviego nie czuje sie najlepiej.");
            };
            if ((TRAP52_SPAWNED) == (1)) {
                B_STARTOTHERROUTINE(NONE_13630_RENEGADE, TOT);
                B_REMOVENPC(0xdf04);
                B_STARTOTHERROUTINE(NONE_13631_RENEGADE, TOT);
                B_REMOVENPC(0xdf07);
                PRINTD("Renegaci przy winnicy przepadli - stra¿ way");
            };
            SALVITRAPS_DESPAWN = TRUE;
        };
    };
    if (((TRAP52_SPAWNED) == (2)) && ((KAPITEL) == (3))) {
        B_STARTOTHERROUTINE(NONE_13630_RENEGADE, TOT);
        B_REMOVENPC(0xdf04);
        B_STARTOTHERROUTINE(NONE_13631_RENEGADE, TOT);
        B_REMOVENPC(0xdf07);
        PRINTD("Renegaci przy winniocy przepadli - araxos way");
        TRAP52_SPAWNED = 3;
    };
}

