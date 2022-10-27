func void EVENTSMANAGER_NS17_DESPAWN() {
    if ((NS17_DESPAWNED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS17_WAYPOINT)) >= (RNG_RADIUS_BIG)) {
            if ((NS17_COMING) == (FALSE)) {
                if ((NS17_JOKEOCUNTER) >= (1)) {
                    PRINTD("B³azen w koñcu sobie poszed³");
                    NS17_DESPAWNED = TRUE;
                    NPC_EXCHANGEROUTINE(VLK_816_CLOWN, TOT);
                    NS17_DESPAWNED = 1;
                };
            };
        };
    };
}

