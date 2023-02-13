func void EVENTSMANAGER_NS38_DESPAWN() {
    if ((NS38_DESPAWNED) == (FALSE)) {
        if ((NS38_SPAWNED) == (TRUE)) {
            if ((HLP_ISVALIDNPC(DJG_13622_WOLFSON)) && (HLP_ISVALIDNPC(DJG_13623_WOLFSON))) {
                if (((NPC_GETDISTTONPC(HERO, DJG_13622_WOLFSON)) <= (RNG_RADIUS_CLOSE)) || ((NPC_GETDISTTONPC(HERO, DJG_13623_WOLFSON)) <= (RNG_RADIUS_CLOSE))) {
                    NPC_EXCHANGEROUTINE(DJG_13622_WOLFSON, TOT);
                    NPC_EXCHANGEROUTINE(DJG_13623_WOLFSON, TOT);
                    PRINTD("Wilczy synowie niebawem odejd¹...");
                    NS38_DESPAWNED = TRUE;
                };
            };
        };
    };
}

