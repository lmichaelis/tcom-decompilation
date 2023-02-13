func void EVENTSMANAGER_SQ220() {
    if ((LOG_GETSTATUS(MIS_SQ220)) == (LOG_RUNNING)) {
        if ((SQ220_ARENAFIGHT) == (1)) {
            if (((NPC_ISINSTATE(NONE_10037_EWALD, 61603)) && (NPC_ISINSTATE(NONE_3400_EWALDFRIEND, 61603))) && (NPC_ISINSTATE(NONE_3401_EWALDFRIEND, 61603))) {
                PRINTD("Wygrana");
                SQ220_ARENAFIGHT = 2;
                B_STARTOTHERROUTINE(NONE_10037_EWALD, "SQ220_AFTERQUEST");
                NONE_10037_EWALD.AIVAR[96] = 2;
                NONE_3400_EWALDFRIEND.AIVAR[96] = 4;
                NONE_3401_EWALDFRIEND.AIVAR[96] = 6;
            } else if (NPC_ISINSTATE(HERO, 61603)) {
                PRINTD("Przegrana");
                SQ220_ARENAFIGHT = 3;
                NONE_10037_EWALD.AIVAR[96] = 2;
                NONE_3400_EWALDFRIEND.AIVAR[96] = 4;
                NONE_3401_EWALDFRIEND.AIVAR[96] = 6;
                if (!(NPC_ISINSTATE(NONE_10037_EWALD, 61603))) {
                    AI_GOTONPC(NONE_10037_EWALD, HERO);
                    AI_PLAYANI(NONE_10037_EWALD, T_PLUNDER);
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ220)) == (LOG_SUCCESS)) {
        if ((SQ220_REMOVENPC) == (0)) {
            if ((NPC_GETDISTTONPC(HERO, NONE_10037_EWALD)) >= (2500)) {
                PRINTD("NPC nie ma");
                SQ220_REMOVENPC = 1;
                B_REMOVENPC(52457);
                B_REMOVENPC(53162);
                B_REMOVENPC(53165);
            };
        };
    };
}

