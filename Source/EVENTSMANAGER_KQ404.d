func void EVENTSMANAGER_KQ404() {
    if ((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) {
        if ((KQ404_INEXTREMO_STARTUNICORNDIALOGUE) == (FALSE)) {
            if (WLD_ISTIME(18, 0, 21, 0)) {
                if ((NPC_GETDISTTONPC(NONE_1393_INEXTREMO_UNICORN, HERO)) <= (1350)) {
                    if (((NPC_ISINSTATE(NONE_1393_INEXTREMO_UNICORN, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                        KQ404_INEXTREMO_STARTUNICORNDIALOGUE = TRUE;
                        UNICORN_KQ404_CONCERT_CAMERA_START();
                        AI_STARTSTATE(NONE_1393_INEXTREMO_UNICORN, 61599, 1, "");
                        AI_STARTSTATE(HERO, 61599, 1, "");
                    };
                };
            };
        };
        if ((KQ404_VLADANCUTSCENEENABLE) == (1)) {
            if (((NPC_GETDISTTOWP(HERO, "HARBOUR_DARKSECRETS_36")) <= (550)) && ((NPC_GETDISTTOWP(NONE_922_VLADAN, "HARBOUR_DARKSECRETS_36")) <= (550))) {
                if (((NPC_ISINSTATE(NONE_922_VLADAN, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                    if ((KQ404_INEXTREMO_BIGCONCERT) == (0)) {
                        KQ404_VLADANCUTSCENEENABLE = 2;
                        HERO.AIVAR[4] = TRUE;
                        FF_APPLYONCEEXT(61837, 75, 4);
                    };
                };
            };
        };
        if ((KQ404_FLEXATTACK) == (1)) {
            if (((NPC_ISINSTATE(NONE_1396_INEXTREMO_FLEX_SACK, 61603)) && ((NPC_ISINSTATE(MIL_13382_HUXLAY, 61599)) == (FALSE))) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                PRINTD("Pokonany");
                KQ404_FLEXATTACK = 2;
                B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ404_BROTHEL");
                NPC_REFRESH(MIL_13382_HUXLAY);
            };
        };
        if ((KQ404_UNICORNLIST_READ) == (TRUE)) {
            if ((INEXTREMO_CANPLAYCONCERT) == (TRUE)) {
                if ((KQ404_UNICORNLIST_GOTFIREARMOR) == (FALSE)) {
                    if ((NPC_HASITEMS(HERO, 37332)) >= (2)) {
                        KQ404_UNICORNLIST_GOTFIREARMOR = TRUE;
                        B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_UNICORN_LIST_FIREMAGE_GOTIT);
                    };
                };
                if ((KQ404_UNICORNLIST_GOTWORKERARMOR) == (FALSE)) {
                    if (C_KQ404_WORKERARMOR(HERO)) {
                        KQ404_UNICORNLIST_GOTWORKERARMOR = TRUE;
                        B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_UNICORN_LIST_WOODCUTTER_GOTIT);
                    };
                };
                if ((KQ404_UNICORNLIST_GOTVLKRICH) == (FALSE)) {
                    if (C_SQ411_GOTRICHVLKARMOR(HERO)) {
                        KQ404_UNICORNLIST_GOTVLKRICH = TRUE;
                        B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_UNICORN_LIST_VLKRICH_GOTIT);
                    };
                };
                if ((KQ404_UNICORNLIST_GUARDARMOR) == (FALSE)) {
                    if ((NPC_HASITEMS(HERO, 35615)) >= (1)) {
                        KQ404_UNICORNLIST_GUARDARMOR = TRUE;
                        B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_UNICORN_LIST_GUARDARMOR_GOTIT);
                    };
                };
            };
            if ((KQ404_UNICORNLIST_GOTEVERYTHING) == (FALSE)) {
                if ((C_KQ404_GOTUNICORNSTUFF(HERO)) && (C_SQ411_GOTRICHVLKARMOR(HERO))) {
                    KQ404_UNICORNLIST_GOTEVERYTHING = TRUE;
                    B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_UNICORN_LIST_GOTEVERYTHING);
                };
            };
        };
        if ((KQ404_INEXTREMO_BIGCONCERT) == (2)) {
            HERO.AIVAR[4] = TRUE;
            FADESCREENTOBLACKF(1, 61869, 1000);
            KQ404_INEXTREMO_BIGCONCERT = 3;
        } else if ((KQ404_INEXTREMO_BIGCONCERT) == (4)) {
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(61872, 75, 4);
            KQ404_INEXTREMO_BIGCONCERT = 5;
        };
    };
}

