func void EVENTSMANAGER_NS45_HOOLIGANS() {
    if ((TRAP45_SPAWNED) == (TRUE)) {
        if ((WOLFSONS_RESULT) == (0)) {
            if (NPC_KNOWSINFO(HERO, 82418)) {
                if (NPC_ISINSTATE(DJG_13620_WOLFSON, 61603)) {
                    PRINTD("Wygra�e� z fanem Lee");
                    WOLFSONS_RESULT = 1;
                };
                if (NPC_ISINSTATE(DJG_13621_WOLFSON, 61603)) {
                    PRINTD("Wygra�e� z fanem Dominique");
                    WOLFSONS_RESULT = 1;
                };
                if (NPC_ISINSTATE(HERO, 61603)) {
                    PRINTD("Przegra�e� z kt�ryms z fan�w");
                    WOLFSONS_RESULT = 2;
                };
            };
        };
    };
}

