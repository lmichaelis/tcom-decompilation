func void EVENTSMANAGER_RNG_GETORYKISGONE() {
    if ((GETORYKTRAPS_DESPAWN) == (FALSE)) {
        if (NPC_ISDEAD(NONE_7002_GETORYX)) {
            if ((TRAP49_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13627_SMUGGLER, TOT);
                B_REMOVENPC(52280);
                PRINTD("Przemytnik idzie przemy�li� swoje �ycie.");
            };
            if ((TRAP50_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13628_SMUGGLER, TOT);
                B_REMOVENPC(53159);
                PRINTD("Przemytnik zgubi� gdzie� ch�� zemsty.");
            };
            if ((TRAP51_SPAWNED) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_13629_SMUGGLER, TOT);
                B_REMOVENPC(53104);
                PRINTD("To po prostu nie jest dzie� dla przemytnika.");
            };
            GETORYKTRAPS_DESPAWN = TRUE;
        };
    };
}

