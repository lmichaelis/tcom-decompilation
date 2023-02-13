func void EVENTSMANAGER_SQ230() {
    if ((LOG_GETSTATUS(MIS_SQ230)) == (LOG_RUNNING)) {
        if ((SQ230_PREVIOUSFIGHT) == (1)) {
            if ((SQ230_FIGHTERONWP()) == (TRUE)) {
                if ((SQ230_COMETOARENA) == (0)) {
                    SQ230_COMETOARENA = 1;
                    SQ230_CHANGEFIGHTERRTN();
                };
            };
            if ((RESERVED_VAR_INT_19) == (TRUE)) {
                if ((NPC_GETDISTTOWP(HERO, RESERVED_CONST_STRING_65)) >= (3000)) {
                    RESERVED_VAR_INT_19 = 2;
                    B_LOGENTRY(TOPIC_SQ230, RESERVED_CONST_STRING_66);
                    LOG_SETSTATUS(_@(MIS_SQ230), TOPIC_SQ230, LOG_FAILED);
                    HERO.AIVAR[95] = FALSE;
                    SQ230_UNBLOCKEQUIPMENT();
                    SQ230_RESTOREFIGHTERS();
                    SQ230_REMOVEENEMY();
                };
            };
            if ((SQ230_FIGHTCOUNT) == (0)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_17A")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13532_FCHOBO, "SLUMS_FIGHTCLUB_17A")) <= (425))) && ((NPC_ISINSTATE(NONE_13532_FCHOBO, 61599)) == (FALSE))) {
                        NONE_13532_FCHOBO.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13532_FCHOBO.AIVAR[15] = FALSE;
                        NONE_13532_FCHOBO.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13532_FCHOBO, AR_NONE);
                        PRINTD("Atakuje bezdomny!");
                        AI_TURNTONPC(NONE_13532_FCHOBO, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13532_FCHOBO);
                        AI_SETWALKMODE(NONE_13532_FCHOBO, NPC_RUN);
                        AI_TURNTONPC(NONE_13532_FCHOBO, HERO);
                        AI_GOTONPC(NONE_13532_FCHOBO, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13532_FCHOBO, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13532_FCHOBO, LEAN);
                    NPC_REFRESH(NONE_13532_FCHOBO);
                    NONE_13532_FCHOBO.FLAGS = 2;
                    if ((NONE_13532_FCHOBO.ATTRIBUTE[0]) != (NONE_13532_FCHOBO.ATTRIBUTE[1])) {
                        NONE_13532_FCHOBO.ATTRIBUTE[0] = NONE_13532_FCHOBO.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z bezdomnym!");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13532_FCHOBO, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                    SQ230_UNBLOCKEQUIPMENT();
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z bezdomnym!");
                    B_STARTOTHERROUTINE(NONE_13532_FCHOBO, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                };
            } else if ((SQ230_FIGHTCOUNT) == (1)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13533_FCFARMER, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_ISINSTATE(NONE_13533_FCFARMER, 61599)) == (FALSE))) {
                        NONE_13533_FCFARMER.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13533_FCFARMER.AIVAR[15] = FALSE;
                        NONE_13533_FCFARMER.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13533_FCFARMER, AR_NONE);
                        PRINTD("Atakuje wsiok!");
                        AI_TURNTONPC(NONE_13533_FCFARMER, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13533_FCFARMER);
                        AI_SETWALKMODE(NONE_13533_FCFARMER, NPC_RUN);
                        AI_TURNTONPC(NONE_13533_FCFARMER, HERO);
                        AI_GOTONPC(NONE_13533_FCFARMER, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13533_FCFARMER, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13533_FCFARMER, LEAN);
                    NPC_REFRESH(NONE_13533_FCFARMER);
                    NONE_13533_FCFARMER.FLAGS = 2;
                    if ((NONE_13533_FCFARMER.ATTRIBUTE[0]) != (NONE_13533_FCFARMER.ATTRIBUTE[1])) {
                        NONE_13533_FCFARMER.ATTRIBUTE[0] = NONE_13533_FCFARMER.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z wsiokiem!");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13533_FCFARMER, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Wygra³eœ z wsiokiem!");
                    B_STARTOTHERROUTINE(NONE_13533_FCFARMER, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (2)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_17A")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13534_FCSAILOR, "SLUMS_FIGHTCLUB_17A")) <= (425))) && ((NPC_ISINSTATE(NONE_13534_FCSAILOR, 61599)) == (FALSE))) {
                        NONE_13534_FCSAILOR.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13534_FCSAILOR.AIVAR[15] = FALSE;
                        NONE_13534_FCSAILOR.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13534_FCSAILOR, AR_NONE);
                        PRINTD("Chia³bym byæ marynarzem...");
                        AI_TURNTONPC(NONE_13534_FCSAILOR, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT_CHOOSESWORD();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13534_FCSAILOR);
                        AI_SETWALKMODE(NONE_13534_FCSAILOR, NPC_RUN);
                        AI_TURNTONPC(NONE_13534_FCSAILOR, HERO);
                        AI_GOTONPC(NONE_13534_FCSAILOR, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13534_FCSAILOR, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13534_FCSAILOR, LEAN);
                    NPC_REFRESH(NONE_13534_FCSAILOR);
                    NONE_13534_FCSAILOR.FLAGS = 2;
                    if ((NONE_13534_FCSAILOR.ATTRIBUTE[0]) != (NONE_13534_FCSAILOR.ATTRIBUTE[1])) {
                        NONE_13534_FCSAILOR.ATTRIBUTE[0] = NONE_13534_FCSAILOR.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z marynarzem!");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13534_FCSAILOR, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Wygra³eœ z marynarzem!");
                    B_STARTOTHERROUTINE(NONE_13534_FCSAILOR, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (3)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_17A")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13535_FCARAXOS, "SLUMS_FIGHTCLUB_17A")) <= (425))) && ((NPC_ISINSTATE(NONE_13535_FCARAXOS, 61599)) == (FALSE))) {
                        NONE_13535_FCARAXOS.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13535_FCARAXOS.AIVAR[15] = FALSE;
                        NONE_13535_FCARAXOS.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13535_FCARAXOS, AR_NONE);
                        PRINTD("You Face Araxos!");
                        AI_TURNTONPC(NONE_13535_FCARAXOS, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT_CHOOSESWORD();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13535_FCARAXOS);
                        AI_SETWALKMODE(NONE_13535_FCARAXOS, NPC_RUN);
                        AI_TURNTONPC(NONE_13535_FCARAXOS, HERO);
                        AI_GOTONPC(NONE_13535_FCARAXOS, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13535_FCARAXOS, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13535_FCARAXOS, LEAN);
                    NPC_REFRESH(NONE_13535_FCARAXOS);
                    NONE_13535_FCARAXOS.FLAGS = 2;
                    if ((NONE_13535_FCARAXOS.ATTRIBUTE[0]) != (NONE_13535_FCARAXOS.ATTRIBUTE[1])) {
                        NONE_13535_FCARAXOS.ATTRIBUTE[0] = NONE_13535_FCARAXOS.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z Araxos!");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13535_FCARAXOS, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z Araxos!");
                    SQ230_UNBLOCKEQUIPMENT();
                    B_STARTOTHERROUTINE(NONE_13535_FCARAXOS, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (4)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13536_FCMILITIA, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_ISINSTATE(NONE_13536_FCMILITIA, 61599)) == (FALSE))) {
                        NONE_13536_FCMILITIA.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13536_FCMILITIA.AIVAR[15] = FALSE;
                        NONE_13536_FCMILITIA.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13536_FCMILITIA, AR_NONE);
                        PRINTD("Jak to policeman atakuje mnie?");
                        AI_TURNTONPC(NONE_13536_FCMILITIA, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13536_FCMILITIA);
                        AI_SETWALKMODE(NONE_13536_FCMILITIA, NPC_RUN);
                        AI_TURNTONPC(NONE_13536_FCMILITIA, HERO);
                        AI_GOTONPC(NONE_13536_FCMILITIA, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13536_FCMILITIA, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13536_FCMILITIA, LEAN);
                    NPC_REFRESH(NONE_13536_FCMILITIA);
                    NONE_13536_FCMILITIA.FLAGS = 2;
                    if ((NONE_13536_FCMILITIA.ATTRIBUTE[0]) != (NONE_13536_FCMILITIA.ATTRIBUTE[1])) {
                        NONE_13536_FCMILITIA.ATTRIBUTE[0] = NONE_13536_FCMILITIA.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z Policj¹.");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13536_FCMILITIA, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z Policj¹!");
                    B_STARTOTHERROUTINE(NONE_13536_FCMILITIA, LEAN);
                    SQ230_UNBLOCKEQUIPMENT();
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (5)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13537_FCSOUTHERNER, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_ISINSTATE(NONE_13537_FCSOUTHERNER, 61599)) == (FALSE))) {
                        NONE_13537_FCSOUTHERNER.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13537_FCSOUTHERNER.AIVAR[15] = FALSE;
                        NONE_13537_FCSOUTHERNER.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13537_FCSOUTHERNER, AR_NONE);
                        PRINTD("Po³udniowiec atakuje!");
                        AI_TURNTONPC(NONE_13537_FCSOUTHERNER, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT_CHOOSESWORD();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13537_FCSOUTHERNER);
                        AI_SETWALKMODE(NONE_13537_FCSOUTHERNER, NPC_RUN);
                        AI_TURNTONPC(NONE_13537_FCSOUTHERNER, HERO);
                        AI_GOTONPC(NONE_13537_FCSOUTHERNER, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13537_FCSOUTHERNER, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13537_FCSOUTHERNER, LEAN);
                    NPC_REFRESH(NONE_13537_FCSOUTHERNER);
                    NONE_13537_FCSOUTHERNER.FLAGS = 2;
                    if ((NONE_13537_FCSOUTHERNER.ATTRIBUTE[0]) != (NONE_13537_FCSOUTHERNER.ATTRIBUTE[1])) {
                        NONE_13537_FCSOUTHERNER.ATTRIBUTE[0] = NONE_13537_FCSOUTHERNER.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z po³udniowcem.");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13537_FCSOUTHERNER, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z po³udniowcem!");
                    SQ230_UNBLOCKEQUIPMENT();
                    B_STARTOTHERROUTINE(NONE_13537_FCSOUTHERNER, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (6)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_17A")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13538_FCVOLKERGUARD, "SLUMS_FIGHTCLUB_17A")) <= (425))) && ((NPC_ISINSTATE(NONE_13538_FCVOLKERGUARD, 61599)) == (FALSE))) {
                        NONE_13538_FCVOLKERGUARD.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13538_FCVOLKERGUARD.AIVAR[15] = FALSE;
                        NONE_13538_FCVOLKERGUARD.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13538_FCVOLKERGUARD, AR_NONE);
                        PRINTD("Tym razem to hobby dzieciaku.");
                        AI_TURNTONPC(NONE_13538_FCVOLKERGUARD, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT_CHOOSESWORD();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13538_FCVOLKERGUARD);
                        AI_SETWALKMODE(NONE_13538_FCVOLKERGUARD, NPC_RUN);
                        AI_TURNTONPC(NONE_13538_FCVOLKERGUARD, HERO);
                        AI_GOTONPC(NONE_13538_FCVOLKERGUARD, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13538_FCVOLKERGUARD, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13538_FCVOLKERGUARD, LEAN);
                    NPC_REFRESH(NONE_13538_FCVOLKERGUARD);
                    NONE_13538_FCVOLKERGUARD.FLAGS = 2;
                    if ((NONE_13538_FCVOLKERGUARD.ATTRIBUTE[0]) != (NONE_13538_FCVOLKERGUARD.ATTRIBUTE[1])) {
                        NONE_13538_FCVOLKERGUARD.ATTRIBUTE[0] = NONE_13538_FCVOLKERGUARD.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z cz³owiekiem lichwiarza.");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13538_FCVOLKERGUARD, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z cz³owiekiem lichwiarza!");
                    SQ230_UNBLOCKEQUIPMENT();
                    B_STARTOTHERROUTINE(NONE_13538_FCVOLKERGUARD, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (7)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_17")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13539_FCFIGHTER, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_GETDISTTOWP(NONE_13540_FCFIGHTER, "SLUMS_FIGHTCLUB_17")) <= (425))) && ((NPC_ISINSTATE(NONE_13539_FCFIGHTER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(NONE_13540_FCFIGHTER, 61599)) == (FALSE))) {
                        NONE_13539_FCFIGHTER.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13540_FCFIGHTER.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13539_FCFIGHTER.AIVAR[15] = FALSE;
                        NONE_13540_FCFIGHTER.AIVAR[15] = FALSE;
                        NONE_13539_FCFIGHTER.AIVAR[95] = FALSE;
                        NONE_13540_FCFIGHTER.AIVAR[95] = FALSE;
                        PRINTD("Bo do tanga trzeba dwojga.");
                        AI_TURNTONPC(NONE_13539_FCFIGHTER, HERO);
                        AI_TURNTONPC(NONE_13540_FCFIGHTER, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        NPC_CLEARAIQUEUE(NONE_13539_FCFIGHTER);
                        NPC_CLEARAIQUEUE(NONE_13540_FCFIGHTER);
                        B_IMMEDIATEATTACKPLAYER(NONE_13539_FCFIGHTER, AR_NONE);
                        B_IMMEDIATEATTACKPLAYER(NONE_13540_FCFIGHTER, AR_NONE);
                        SQ230_BLOCKEQUIPMENT();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13539_FCFIGHTER);
                        AI_SETWALKMODE(NONE_13539_FCFIGHTER, NPC_RUN);
                        AI_TURNTONPC(NONE_13539_FCFIGHTER, HERO);
                        AI_GOTONPC(NONE_13539_FCFIGHTER, HERO);
                        NPC_CLEARAIQUEUE(NONE_13540_FCFIGHTER);
                        AI_SETWALKMODE(NONE_13540_FCFIGHTER, NPC_RUN);
                        AI_TURNTONPC(NONE_13540_FCFIGHTER, HERO);
                        AI_GOTONPC(NONE_13540_FCFIGHTER, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((NPC_ISINSTATE(NONE_13539_FCFIGHTER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(NONE_13540_FCFIGHTER, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13539_FCFIGHTER, LEAN);
                    NPC_REFRESH(NONE_13539_FCFIGHTER);
                    NONE_13539_FCFIGHTER.FLAGS = 2;
                    if ((NONE_13539_FCFIGHTER.ATTRIBUTE[0]) != (NONE_13539_FCFIGHTER.ATTRIBUTE[1])) {
                        NONE_13539_FCFIGHTER.ATTRIBUTE[0] = NONE_13539_FCFIGHTER.ATTRIBUTE[1];
                    };
                    NONE_13540_FCFIGHTER.FLAGS = 2;
                    B_STARTOTHERROUTINE(NONE_13540_FCFIGHTER, LEAN);
                    NPC_REFRESH(NONE_13540_FCFIGHTER);
                    if ((NONE_13540_FCFIGHTER.ATTRIBUTE[0]) != (NONE_13540_FCFIGHTER.ATTRIBUTE[1])) {
                        NONE_13540_FCFIGHTER.ATTRIBUTE[0] = NONE_13540_FCFIGHTER.ATTRIBUTE[1];
                    };
                    PRINTD("Przegra³eœ ze zbirami.");
                    SQ230_UNBLOCKEQUIPMENT();
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13540_FCFIGHTER, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    PRINTD("Jeden zbir gleba!");
                    SQ230_FCENEMYDOWN01 = TRUE;
                };
                if (((NPC_ISINSTATE(NONE_13539_FCFIGHTER, 61603)) && ((SQ230_FCENEMYDOWN02) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    PRINTD("Jeden zbir gleba!");
                    SQ230_FCENEMYDOWN02 = TRUE;
                };
                if (((SQ230_FCENEMYDOWN02) == (TRUE)) && ((SQ230_FCENEMYDOWN01) == (TRUE))) {
                    PRINTD("Oba zbiry pokonane!");
                    SQ230_UNBLOCKEQUIPMENT();
                    B_STARTOTHERROUTINE(NONE_13540_FCFIGHTER, LEAN);
                    B_STARTOTHERROUTINE(NONE_13539_FCFIGHTER, LEAN);
                    SQ230_PREVIOUSFIGHT = 3;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (8)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13544_FCWOLFSON, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_ISINSTATE(NONE_13544_FCWOLFSON, 61599)) == (FALSE))) {
                        NONE_13544_FCWOLFSON.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13544_FCWOLFSON.AIVAR[15] = FALSE;
                        NONE_13544_FCWOLFSON.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13544_FCWOLFSON, AR_NONE);
                        PRINTD("Awooo.");
                        AI_TURNTONPC(NONE_13544_FCWOLFSON, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13544_FCWOLFSON);
                        AI_SETWALKMODE(NONE_13544_FCWOLFSON, NPC_RUN);
                        AI_TURNTONPC(NONE_13544_FCWOLFSON, HERO);
                        AI_GOTONPC(NONE_13544_FCWOLFSON, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(HERO, 61603)) && ((SQ230_HERODOWN) == (FALSE))) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((NPC_ISINSTATE(NONE_13544_FCWOLFSON, 61599)) == (FALSE))) {
                    SQ230_HERODOWN = TRUE;
                    SQ230_PREVIOUSFIGHT = 2;
                    B_STARTOTHERROUTINE(NONE_13544_FCWOLFSON, LEAN);
                    NPC_REFRESH(NONE_13544_FCWOLFSON);
                    NONE_13544_FCWOLFSON.FLAGS = 2;
                    if ((NONE_13544_FCWOLFSON.ATTRIBUTE[0]) != (NONE_13544_FCWOLFSON.ATTRIBUTE[1])) {
                        NONE_13544_FCWOLFSON.ATTRIBUTE[0] = NONE_13544_FCWOLFSON.ATTRIBUTE[1];
                    };
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Przegra³eœ z wilczym synem.");
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
                if (((NPC_ISINSTATE(NONE_13544_FCWOLFSON, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    PRINTD("Wygra³eœ z wilczym synem!");
                    SQ230_UNBLOCKEQUIPMENT();
                    B_STARTOTHERROUTINE(NONE_13544_FCWOLFSON, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            } else if ((SQ230_FIGHTCOUNT) == (9)) {
                if ((SQ230_RTFIGHTER) == (FALSE)) {
                    if ((((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) <= (425)) && ((NPC_GETDISTTOWP(NONE_13545_FCNORD, "SLUMS_FIGHTCLUB_18")) <= (425))) && ((NPC_ISINSTATE(NONE_13545_FCNORD, 61599)) == (FALSE))) {
                        NONE_13545_FCNORD.FLAGS = NPC_FLAG_IMPORTANT;
                        NONE_13545_FCNORD.AIVAR[15] = FALSE;
                        NONE_13545_FCNORD.AIVAR[95] = FALSE;
                        B_IMMEDIATEATTACKPLAYER(NONE_13545_FCNORD, AR_KILL);
                        PRINTD("Szalony Nordmarczyk chce ciê zamordowaæ");
                        AI_TURNTONPC(NONE_13545_FCNORD, HERO);
                        WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                        SQ230_BLOCKEQUIPMENT_CHOOSESWORD();
                        SQ230_RTFIGHTER = TRUE;
                        NPC_CLEARAIQUEUE(NONE_13545_FCNORD);
                        AI_SETWALKMODE(NONE_13545_FCNORD, NPC_RUN);
                        AI_TURNTONPC(NONE_13545_FCNORD, HERO);
                        AI_GOTONPC(NONE_13545_FCNORD, HERO);
                    };
                };
                if ((((NPC_ISINSTATE(NONE_13545_FCNORD, 61603)) && ((SQ230_FCENEMYDOWN01) == (FALSE))) && ((SQ230_HERODOWN) == (FALSE))) && ((NPC_ISINSTATE(NONE_13545_FCNORD, 61599)) == (FALSE))) {
                    SQ230_PREVIOUSFIGHT = 3;
                    SQ230_UNBLOCKEQUIPMENT();
                    PRINTD("Wygra³eœ z Nordmarczykiem!");
                    NPC_SETATTITUDE(NONE_13545_FCNORD, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(NONE_13545_FCNORD, ATT_NEUTRAL);
                    NONE_13545_FCNORD.AIVAR[1] = CRIME_NONE;
                    NONE_13545_FCNORD.AIVAR[0] = FIGHT_LOST;
                    B_STARTOTHERROUTINE(NONE_13545_FCNORD, LEAN);
                    SQ230_FCENEMYDOWN01 = TRUE;
                    WLD_SENDTRIGGER("FIGHTCLUB_MOVER_ALPHA");
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ230)) == (LOG_SUCCESS)) {
        if ((SQ230_AFTERQUEST) == (FALSE)) {
            if ((SQ230_WINCOUNT) >= (10)) {
                if (((NPC_GETDISTTOWP(HERO, "SLUMS_FIGHTCLUB_18")) >= (5000)) && ((SQ230_DAYOFFIGHT) != (WLD_GETDAY()))) {
                    if ((HLP_ISVALIDNPC(VLK_6026_GUY)) && ((NPC_ISINSTATE(VLK_6026_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_6026_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_6026_GUY);
                        B_KILLNPC(54960);
                    };
                    if ((HLP_ISVALIDNPC(VLK_6040_GUY)) && ((NPC_ISINSTATE(VLK_6040_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_6040_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_6040_GUY);
                        B_KILLNPC(54991);
                    };
                    if ((HLP_ISVALIDNPC(VLK_6042_GUY)) && ((NPC_ISINSTATE(VLK_6042_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_6042_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_6042_GUY);
                        B_KILLNPC(54998);
                    };
                    if ((HLP_ISVALIDNPC(VLK_6058_GUY)) && ((NPC_ISINSTATE(VLK_6058_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_6058_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_6058_GUY);
                        B_KILLNPC(55028);
                    };
                    if ((HLP_ISVALIDNPC(VLK_13529_GUY)) && ((NPC_ISINSTATE(VLK_13529_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_13529_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_13529_GUY);
                        B_KILLNPC(54934);
                    };
                    if ((HLP_ISVALIDNPC(VLK_13530_GUY)) && ((NPC_ISINSTATE(VLK_13530_GUY, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_13530_GUY, "AFTERSQ230");
                        NPC_REFRESH(VLK_13530_GUY);
                        B_KILLNPC(54938);
                    };
                    if ((HLP_ISVALIDNPC(VLK_13531_ALENA)) && ((NPC_ISINSTATE(VLK_13531_ALENA, 61599)) == (FALSE))) {
                        B_STARTOTHERROUTINE(VLK_13531_ALENA, "AFTERSQ230");
                        NPC_REFRESH(VLK_13531_ALENA);
                        NPC_REMOVEINVITEMS(VLK_13531_ALENA, 34203, NPC_HASITEMS(VLK_13531_ALENA, 34203));
                        CREATEINVITEMS(VLK_13531_ALENA, 37118, 1);
                        B_KILLNPC(55076);
                    };
                    WLD_INSERTNPC(50784, "SLUMS_FIGHTCLUB_16");
                    B_KILLNPC(50784);
                    PRINTD("Alena i jej Arena s¹ skoñczone");
                    SQ230_AFTERQUEST = TRUE;
                };
            };
        };
    };
}

