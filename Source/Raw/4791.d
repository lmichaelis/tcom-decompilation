func void EVENTSMANAGER_SQ314() {
    if ((LOG_GETSTATUS(MIS_SQ314)) == (LOG_RUNNING)) {
        if ((TRAP17_SPAWNEDPHASE3) == (FALSE)) {
            if ((TRAP17_SPAWNEDPHASE2) == (FALSE)) {
                if ((TRAP_M5_CH3_TALKDAY) != (WLD_GETDAY())) {
                    if (NPC_KNOWSINFO(HERO, 0x11b39)) {
                        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP17PHASE2_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                            PRINTD("Staruszek i jego bodyguard cziluj¹ przy ³aweczkach (m5)");
                            WLD_INSERTNPC(0xd12b, RNG_TRAP17PHASE2_WAYPOINT);
                            NPC_EXCHANGEROUTINE(VLK_11302_BODYGUARD, LEAN);
                            TELEPORTNPCTOWP(0xd125, "PARTM5_PATH_122");
                            TRAP17_SPAWNEDPHASE2 = TRUE;
                        };
                    };
                };
            };
            if ((TRAP17_SPAWNEDPHASE2) == (TRUE)) {
                if (((NPC_ISINSTATE(VLK_11302_BODYGUARD, 0xf0a3)) && ((TRAP17_OLDMAN_PANIC) == (FALSE))) && ((TRAP17_OUTCOME) == (0))) {
                    PRINTD("Staruszek siê wystraszy³ bardziej ni¿ powinien! (m5)");
                    B_LOGENTRY(TOPIC_SQ314, LOG_SQ314_IAMSCUMBAG);
                    TRAP17_OLDMAN_PANIC = TRUE;
                };
                if ((((TRAP17_SPAWNEDPHASE3) == (FALSE)) && ((TRAP_M5_CH3_TALKDAY02) != (WLD_GETDAY()))) && (NPC_KNOWSINFO(HERO, 0x11b42))) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_TRAP17_WAYPOINT)) <= (RNG_RADIUS_NORMALMORE3)) {
                        TRAP17_SPAWNEDPHASE3 = TRUE;
                        PRINTD("Ochroniarz zaprasza na ostatni meeting (m5)");
                        B_REMOVENPC(0xd12b);
                        NPC_EXCHANGEROUTINE(VLK_11302_BODYGUARD, "AFTEREVENT");
                    };
                };
            };
        };
    };
}

