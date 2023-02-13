func void EVENTSMANAGER_NS21_SCREAM() {
    if ((NS21_SHUTUP) == (FALSE)) {
        if ((NS21_SPAWNED) == (TRUE)) {
            if (HLP_ISVALIDNPC(NONE_13361_RACIUS)) {
                if (NPC_ISDEAD(NONE_13361_RACIUS)) {
                    PRINTD("Koniec wrzasku");
                    B_REMOVENPC(50611);
                    NPC_EXCHANGEROUTINE(NONE_13361_RACIUS, TOT);
                    NS21_SHUTUP = TRUE;
                };
            };
        };
    };
}

