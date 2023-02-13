func void EVENTSMANAGER_NS17_ANNOYINGWALK() {
    if ((NS17_DESPAWNED) == (FALSE)) {
        if ((NS17_SPAWNED) == (TRUE)) {
            if ((((NPC_GETDISTTOWP(VLK_816_CLOWN, RNG_NS17_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE3)) && ((NS17_COMING) == (TRUE))) && ((NPC_ISINSTATE(VLK_816_CLOWN, 61599)) == (FALSE))) {
                B_STARTOTHERROUTINE(VLK_816_CLOWN, "WAITING");
                NPC_REFRESH(VLK_816_CLOWN);
                PRINTD("B³azen czeka");
                NS17_COMING = FALSE;
            };
            if ((((NS17_COMING) == (FALSE)) && ((NPC_GETDISTTOWP(HERO, RNG_NS17_WAYPOINT)) < (RNG_RADIUS_NORMALMORE3))) && ((NPC_ISINSTATE(VLK_816_CLOWN, 61599)) == (FALSE))) {
                B_STARTOTHERROUTINE(VLK_816_CLOWN, START);
                NPC_REFRESH(VLK_816_CLOWN);
                PRINTD("B³azen pod¹¿a");
                NS17_COMING = TRUE;
            };
        };
    };
}

