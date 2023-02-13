func void EVENTSMANAGER_NS66_DESPAWN() {
    if (((NS66_SPAWNED) == (TRUE)) && ((EVENTTALKTIME) == (13))) {
        if ((NS66_DESPAWNED) == (FALSE)) {
            PRINTD("You're a rascal, you're a rascal with no respect");
            NPC_EXCHANGEROUTINE(NONE_13802_TRAVELLER, TOT);
            NPC_EXCHANGEROUTINE(NONE_13803_POTIONSELLER, TOT);
            NS66_DESPAWNED = TRUE;
        };
    };
}

