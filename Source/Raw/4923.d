func void EVENTSMANAGER_RNG_HAVENISGONE() {
    if ((TRAP53_SPAWNED) == (TRUE)) {
        if ((TRAP53_DESPAWNED) == (FALSE)) {
            if ((KAPITEL) == (5)) {
                B_STARTOTHERROUTINE(PIR_13633_PIRATE, TOT);
                B_REMOVENPC(0xe61f);
                PRINTD("Pirat ju¿ nie chce siê biæ.");
                TRAP53_DESPAWNED = TRUE;
            };
        };
    };
    if ((TRAP59_SPAWNED) == (TRUE)) {
        if ((TRAP59_DESPAWNED) == (FALSE)) {
            if ((KAPITEL) == (5)) {
                B_STARTOTHERROUTINE(NONE_13798_PIRATESMITH, TOT);
                B_REMOVENPC(0xe61c);
                PRINTD("Pirat-kowal ju¿ nie chce siê biæ.");
                TRAP59_DESPAWNED = TRUE;
            };
        };
    };
    if ((NS41_SPAWNED) == (TRUE)) {
        if ((NS41_DESPAWNED) == (FALSE)) {
            if ((KAPITEL) == (5)) {
                B_STARTOTHERROUTINE(NONE_13681_NOTAFREDRIK, TOT);
                B_REMOVENPC(0xe618);
                PRINTD("Wcale nie Petra zniknê³a (przepad³a).");
                NS41_DESPAWNED = TRUE;
            };
        };
    };
    if ((NS43_SPAWNED) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_13405_ABLO))) {
            if ((NS43_DESPAWNED) == (FALSE)) {
                if ((KAPITEL) == (5)) {
                    B_STARTOTHERROUTINE(NONE_13405_ABLO, TOT);
                    B_REMOVENPC(0xe614);
                    PRINTD("Mit obalony.");
                    NS43_DESPAWNED = TRUE;
                };
            };
        };
    };
    if ((NS58_SPAWNED) == (TRUE)) {
        if (!(NPC_ISDEAD(PIR_13786_SCAMPIRATE))) {
            if ((NS58_DESPAWNED) == (FALSE)) {
                if ((KAPITEL) == (5)) {
                    B_STARTOTHERROUTINE(PIR_13786_SCAMPIRATE, TOT);
                    B_REMOVENPC(0xe622);
                    PRINTD("oszust sie wyrolowa³");
                    NS58_DESPAWNED = TRUE;
                };
            };
        };
    };
    if ((NS72_DESPAWNED) == (FALSE)) {
        if ((NS72_SPAWNED) == (TRUE)) {
            if ((KAPITEL) == (5)) {
                NPC_EXCHANGEROUTINE(PIR_14128_AMJAK, TOT);
                B_REMOVENPC(0xe62e);
                NPC_EXCHANGEROUTINE(PIR_14125_PIRATE, TOT);
                B_REMOVENPC(0xe625);
                NPC_EXCHANGEROUTINE(PIR_14126_PIRATE, TOT);
                B_REMOVENPC(0xe628);
                NPC_EXCHANGEROUTINE(PIR_14127_PIRATE, TOT);
                B_REMOVENPC(0xe62b);
                if (((NS72_STATUS) == (2)) && ((NS72_BARRELOFFORTUNE) == (2))) {
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, TOT);
                    B_REMOVENPC(0xe631);
                };
                PRINTD("Wyzwanie - zniknij");
                NS72_STATUS = 3;
                NS72_DESPAWNED = TRUE;
            };
        };
    };
}

