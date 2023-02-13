func void EVENTSMANAGER_SQ416() {
    if ((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) {
        if ((SQ416_RAMSEYHOUSEMEETING) == (TRUE)) {
            if (((SQ416_RAMSEYHOUSE_HOURS) <= ((WLD_GETHOUR()) - (6))) || ((SQ416_RAMSEYHOUSE_DAY) != (WLD_GETDAY()))) {
                SQ416_RAMSEYHOUSEMEETING = 2;
                SQ416_HUNTERMEETING();
                SQ416_RAMSEYHOUSEUNLOCK();
            };
        } else if ((SQ416_RAMSEYHOUSEMEETING) == (2)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_500_RAMSEY)) <= (300)) && ((NPC_GETDISTTOWP(HERO, "PARTM5_RAMSEY_07")) <= (3000))) {
                if (((NPC_ISINSTATE(NONE_500_RAMSEY, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                    SQ416_RAMSEYHOUSEMEETING = 3;
                    HERO.AIVAR[4] = TRUE;
                    FF_APPLYONCEEXT(63548, 75, 4);
                };
            };
        };
        if ((SQ416_HUNTERSSLEEP) == (2)) {
            if ((SQ416_CANTLEAVEFOREST) != (3)) {
                if ((SQ416_CANTLEAVEFOREST) == (0)) {
                    if (((((NPC_GETDISTTOWP(HERO, "PART12_PATH_44")) <= (2200)) || ((NPC_GETDISTTOWP(HERO, "PART12_PATH_99")) <= (500))) || ((NPC_GETDISTTOWP(HERO, "PART12_PATH_96")) <= (1200))) || ((NPC_GETDISTTOWP(HERO, "PART12_PATH_108")) <= (500))) {
                        SQ416_CANTLEAVEFOREST = 1;
                        PRINTD("Nie uciekniesz");
                    };
                } else if ((SQ416_CANTLEAVEFOREST) == (1)) {
                    if (((NPC_GETDISTTOWP(HERO, "PART12_PATH_30")) <= (2000)) || ((NPC_GETDISTTOWP(HERO, "PART12_PATH_104")) <= (1200))) {
                        AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_TooFar_15_01");
                        SQ416_CANTLEAVEFOREST = 2;
                    };
                } else if ((SQ416_CANTLEAVEFOREST) == (2)) {
                    if (((NPC_GETDISTTOWP(HERO, "PART12_PATH_30")) <= (1500)) || ((NPC_GETDISTTOWP(HERO, "PART12_PATH_104")) <= (350))) {
                        SQ416_CANTLEAVEFOREST = 3;
                        FADESCREENTOBLACKF(1, 63590, 1000);
                    };
                };
            };
            if ((SQ416_FOUNDRUDI) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_CAVE_01")) <= (600)) {
                    SQ416_FOUNDRUDI = TRUE;
                    B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_FOUNDRUDI);
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_Hunting_15_01");
                };
            };
            if ((SQ416_FOUNDSCROLLS) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_SQ416_SCROLLS")) <= (350)) {
                    SQ416_FOUNDSCROLLS = TRUE;
                    SQ416_DETLOWSUSPECT_COUNT();
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_Hunting_15_03");
                };
            };
            if ((SQ416_FOUNDPOTIONS) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_SQ416_CLUE_01")) <= (350)) {
                    SQ416_FOUNDPOTIONS = TRUE;
                    SQ416_DETLOWSUSPECT_COUNT();
                    B_SAY(HERO, HERO, "$MARVIN_ThinkingEmoji");
                };
            };
            if ((SQ416_FOUNDBOW) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_MOB_77")) <= (200)) {
                    SQ416_FOUNDBOW = TRUE;
                    SQ416_DETLOWSUSPECT_COUNT();
                    B_SAY(HERO, HERO, "$MARVIN_ThinkingEmoji");
                };
            };
            if ((SQ416_FOUNDMONSTERS) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_PATH_84")) <= (500)) {
                    SQ416_FOUNDMONSTERS = 1;
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_Hunting_15_05");
                };
            };
            if (NPC_KNOWSINFO(HERO, 77409)) {
                if ((NPC_GETDISTTOWP(HERO, "PART12_PATH_78")) <= (600)) {
                    if ((SQ416_HORNEVENT) == (0)) {
                        SQ416_HORNEVENT = 1;
                        AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_Hunting_15_02");
                        B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_HORNSOUND);
                    };
                };
                if (((SQ416_HORNEVENT) == (0)) || ((SQ416_HORNEVENT) == (1))) {
                    if ((NPC_GETDISTTOWP(HERO, "PART12_SQ416_ALLAN")) <= (3800)) {
                        B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_HORNSOUND_SILENCE);
                        WLD_SENDTRIGGER("SQ416_MOVER_SOUND");
                        SQ416_HORNEVENT = 2;
                    };
                };
            };
            if ((SQ416_STARTBOSSFIGHT) == (1)) {
                if ((NPC_GETDISTTONPC(HERO, RAZOR_ARMORED)) <= (1000)) {
                    PRINTD("Boss fight");
                    SQ416_STARTBOSSFIGHT = 2;
                    START_BOSSUI(RAZOR_ARMORED, 1);
                    RAZOR_ARMORED.BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
                    if ((KAPITEL) == (5)) {
                        PRINTD("Zwiêkszam staty");
                        RAZOR_ARMORED.ATTRIBUTE[4] += 30;
                        RAZOR_ARMORED.ATTRIBUTE[1] += 500;
                        RAZOR_ARMORED.ATTRIBUTE[0] += 500;
                        RAZOR_ARMORED.PROTECTION[1] += 20;
                        RAZOR_ARMORED.PROTECTION[2] += 20;
                        RAZOR_ARMORED.PROTECTION[6] += 20;
                        RAZOR_ARMORED.PROTECTION[3] += 20;
                        RAZOR_ARMORED.PROTECTION[4] += 40;
                    };
                };
            } else if (((SQ416_STARTBOSSFIGHT) == (2)) && (NPC_ISDEAD(RAZOR_ARMORED))) {
                PRINTD("Dead");
                FINALBOARDS_RAZORISDEAD = TRUE;
                SQ416_STARTBOSSFIGHT = 3;
                GAMESERVICES_UNLOCKACHIEVEMENT(ACH_32);
                AI_PLAYANI(VLK_3015_DETLOW, "T_RAZORFIGHT_LONG_END");
                B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_CAVE_TIRED");
                SQ416_DETLOW_RTNCHECK = 7;
                VLK_3015_DETLOW.AIVAR[4] = FALSE;
                B_CLEARPERCEPTIONS(VLK_3015_DETLOW);
                NPC_PERCENABLE(VLK_3015_DETLOW, PERC_ASSESSPLAYER, 43306);
                NPC_PERCENABLE(VLK_3015_DETLOW, PERC_ASSESSTALK, 41645);
                NPC_PERCENABLE(VLK_3015_DETLOW, PERC_MOVEMOB, 41654);
                B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_RAZORDEAD);
                SQ416_PREPARERAMSEY();
            };
            if ((SQ416_STARTBOSSFIGHT) == (2)) {
                if ((SQ416_BOSSFIGHT_STATUS) == (0)) {
                    if ((RAZOR_ARMORED.ATTRIBUTE[0]) <= (((RAZOR_ARMORED.ATTRIBUTE[1]) / (4)) * (3))) {
                        SQ416_BOSSFIGHT_STATUS = 1;
                        MDL_APPLYOVERLAYMDS(RAZOR_ARMORED, "RAZOR_SPEED_TIER_1.mds");
                        NPC_CLEARAIQUEUE(RAZOR_ARMORED);
                        AI_PLAYANI(RAZOR_ARMORED, "T_WARN_BOSS");
                        NPC_CLEARAIQUEUE(VLK_3015_DETLOW);
                        AI_PLAYANI(VLK_3015_DETLOW, "T_RAZORFIGHT_SHORT");
                        NPC_CLEARAIQUEUE(HERO);
                        AI_PLAYANI(HERO, "T_RAZORFIGHT_SHORT");
                    };
                } else if ((SQ416_BOSSFIGHT_STATUS) == (1)) {
                    if ((RAZOR_ARMORED.ATTRIBUTE[0]) <= ((RAZOR_ARMORED.ATTRIBUTE[1]) / (2))) {
                        SQ416_BOSSFIGHT_STATUS = 2;
                        RAZOR_ARMORED.BODYSTATEINTERRUPTABLEOVERRIDE = FALSE;
                        MDL_APPLYOVERLAYMDS(RAZOR_ARMORED, "RAZOR_SPEED_TIER_2.mds");
                        B_STARTOTHERROUTINE(RAZOR_ARMORED, "ONLYMARVIN");
                        NPC_REFRESH(RAZOR_ARMORED);
                        AI_PLAYANI(RAZOR_ARMORED, "T_WARN_BOSS");
                        AI_TURNTONPC(RAZOR_ARMORED, HERO);
                        B_IMMEDIATEATTACKPLAYER(RAZOR_ARMORED, AR_KILL);
                        B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_OUTOFBATTLE");
                        NPC_REFRESH(VLK_3015_DETLOW);
                        VLK_3015_DETLOW.AIVAR[4] = TRUE;
                        NPC_CLEARAIQUEUE(HERO);
                        AI_PLAYANI(HERO, "T_RAZORFIGHT_SHORT");
                    };
                } else if ((SQ416_BOSSFIGHT_STATUS) == (2)) {
                    if ((RAZOR_ARMORED.ATTRIBUTE[0]) <= ((RAZOR_ARMORED.ATTRIBUTE[1]) / (3))) {
                        SQ416_BOSSFIGHT_STATUS = 3;
                        MDL_APPLYOVERLAYMDS(RAZOR_ARMORED, "RAZOR_SPEED_TIER_3.mds");
                        NPC_CLEARAIQUEUE(RAZOR_ARMORED);
                        AI_PLAYANI(RAZOR_ARMORED, "T_WARN_BOSS");
                        RAZOR_ARMORED.BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
                        NPC_CLEARAIQUEUE(HERO);
                        AI_PLAYANI(HERO, "T_RAZORFIGHT_SHORT");
                    };
                };
            };
            if ((SQ416_CHANGERAMSEYRTN) == (1)) {
                if (((NPC_GETDISTTONPC(HERO, NONE_500_RAMSEY)) <= (3000)) && ((NPC_ISINSTATE(NONE_500_RAMSEY, 61599)) == (FALSE))) {
                    PRINTD("Zmiana RTN");
                    SQ416_CHANGERAMSEYRTN = 2;
                    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_RAMSEY_WAIT");
                    NPC_REFRESH(NONE_500_RAMSEY);
                };
            };
            if ((SQ416_RAMSEYPARTYCUTSCENEENABLE) == (1)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_500_RAMSEY)) <= (300)) {
                    if (((NPC_ISINSTATE(NONE_500_RAMSEY, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                        SQ416_RAMSEYPARTYCUTSCENEENABLE = 2;
                        HERO.AIVAR[4] = TRUE;
                        FF_APPLYONCEEXT(63570, 75, 4);
                    };
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) {
        if ((SQ416_RAMSEYPARTY) == (1)) {
            if (((SQ416_RAMSEYPARTY_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_GETDISTTONPC(HERO, NONE_500_RAMSEY)) >= (10000))) {
                PRINTD("Koniec imprezy");
                SQ416_RAMSEYPARTY = 2;
                FF_APPLYONCEEXTGT(63577, 0, -(1));
                SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_REMOVENPC();
            };
        };
        if ((SQ416_FOUNDCAGE) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, "PART6_SQ416_RAZORCAGE")) <= (750)) {
                SQ416_FOUNDCAGE = 1;
                SQ416_DETLOWSUSPECT_COUNT();
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ416_Hunting_15_04");
            };
        };
    };
}

