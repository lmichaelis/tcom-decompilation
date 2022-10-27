func void EVENTSMANAGER_NS65_DESPAWN() {
    if (((NS65_SPAWNED) == (TRUE)) && (NPC_KNOWSINFO(HERO, 0x11ec1))) {
        if ((NS65_DESPAWNED) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, VLK_13800_DULLCITIZEN)) >= (RNG_RADIUS_VERYFAR)) {
                PRINTD("Nieogarniety obywatel pojecha³ do wilczego");
                NPC_EXCHANGEROUTINE(VLK_13800_DULLCITIZEN, TOT);
                NPC_EXCHANGEROUTINE(SLD_13801_FASTTRAVEL, TOT);
                B_REMOVENPC(0xcc4b);
                B_REMOVENPC(0xcc3b);
                NS65_DESPAWNED = TRUE;
            };
        };
    };
}

