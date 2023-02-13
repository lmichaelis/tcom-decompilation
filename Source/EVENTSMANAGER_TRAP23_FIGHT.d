func void EVENTSMANAGER_TRAP23_FIGHT() {
    if (((TRAP23_SPAWNED) == (TRUE)) && ((TRAP23_BADEND) == (FALSE))) {
        if (HLP_ISVALIDNPC(NONE_13330_TRADER)) {
            if (NPC_ISDEAD(NONE_13330_TRADER)) {
                PRINTD("Handlarz nie ¿yje! Ochroniarz ma depresje!");
                B_STARTOTHERROUTINE(NONE_13331_BODYGUARD, "DEPRESSION");
                TRAP23_BADEND = TRUE;
            };
        };
        if (HLP_ISVALIDNPC(NONE_13331_BODYGUARD)) {
            if (NPC_ISDEAD(NONE_13331_BODYGUARD)) {
                PRINTD("Ochroniarz nie ¿yje! Handlarz ma depresje!");
                B_STARTOTHERROUTINE(NONE_13330_TRADER, "DEPRESSION");
                TRAP23_BADEND = TRUE;
            };
        };
    };
}

