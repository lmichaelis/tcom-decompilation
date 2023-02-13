func void EVENTSMANAGER_TRAP03_CITIZENBEATEN() {
    if ((RND_TRAP02_M3_CH2) == (2)) {
        if (HLP_ISVALIDNPC(VLK_11095_BEATENCITIZEN)) {
            if (((NPC_ISDEAD(VLK_11095_BEATENCITIZEN)) && ((TRAP03_SPAWNED) == (TRUE))) && ((TRAP03_AI_CHANGE) == (FALSE))) {
                PRINTD("Menele maj¹ teraz do problem do Marvina");
                NPC_EXCHANGEROUTINE(VLK_11092_HOBO, "AFTEREVENT");
                NPC_EXCHANGEROUTINE(VLK_11093_HOBO, "AFTEREVENT");
                NPC_EXCHANGEROUTINE(VLK_11094_HOBO, "AFTEREVENT");
                TRAP03_AI_CHANGE = TRUE;
            };
            if (((TRAP03_SPAWNED) == (TRUE)) && (NPC_KNOWSINFO(HERO, 71953))) {
                if ((TR_BEATENCITIZEN_VANISH) == (FALSE)) {
                    if ((NPC_GETDISTTONPC(HERO, VLK_11095_BEATENCITIZEN)) >= (RNG_RADIUS_VERYFAR)) {
                        PRINTD("Pobity obywatel leczy siê w Ciechocinku");
                        B_REMOVENPC(57810);
                        TR_BEATENCITIZEN_VANISH = TRUE;
                    };
                };
            };
        };
    };
}

