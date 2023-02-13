func void EVENTSMANAGER_Q205() {
    var int Q205_FELLTOWATER;
    if ((LOG_GETSTATUS(MIS_Q205)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q205_MARVINRENEGADECAVE) == (1)) {
        if (!(NPC_ISINSTATE(HERO, 61599))) {
            if (HLP_ISVALIDNPC(MIL_6264_RENEGADE)) {
                if (!(NPC_ISINSTATE(MIL_6264_RENEGADE, 61599))) {
                    DIACAM_DISABLE();
                    WLD_SENDTRIGGER("KM_RENEGADE_ENTRY_01");
                    Q205_MARVINRENEGADECAVE = 2;
                };
            };
        };
    };
    if ((Q205_MARVINRENEGADECAVE) == (2)) {
        if (NPC_ISINSTATE(HERO, 61603)) {
            NPC_SETTOFIGHTMODE(MIL_6264_RENEGADE, FMODE_NONE);
            AI_REMOVEWEAPON(MIL_6264_RENEGADE);
            AI_STANDUP(MIL_6264_RENEGADE);
            NPC_CLEARAIQUEUE(MIL_6264_RENEGADE);
            NPC_SETATTITUDE(MIL_6264_RENEGADE, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(MIL_6264_RENEGADE, ATT_NEUTRAL);
            MIL_6264_RENEGADE.AIVAR[1] = CRIME_NONE;
            MIL_6264_RENEGADE.AIVAR[0] = FIGHT_NONE;
            MDL_STARTFACEANI(MIL_6264_RENEGADE, S_NEUTRAL, 1065353216, -1082130432);
            FF_APPLYONCEEXT(62246, 1000, 26);
            Q205_MARVINRENEGADECAVE = 3;
            if (((Q205_MARVINRENEGADECAVE) == (3)) && ((Q205_MARVINCAVERENEGADE_COUNT) >= (1))) {
                AI_GOTONPC(MIL_6264_RENEGADE, HERO);
                AI_PLAYANI(MIL_6264_RENEGADE, T_PLUNDER);
            };
        };
    };
    if (HLP_ISVALIDNPC(NONE_6269_DANIEL)) {
        if ((((Q205_TRYTOSAVEDANIEL) == (0)) && (NPC_ISDEAD(NONE_6269_DANIEL))) || (((Q205_TRYTOSAVEDANIEL) == (1)) && (NPC_ISDEAD(NONE_6269_DANIEL)))) {
            B_LOGENTRY(TOPIC_Q205, LOG_Q205_KILLEDDANIEL);
            Q205_RENEGADESIGNOREMURDER_DISABLE();
            Q205_TRYTOSAVEDANIEL = 4;
        };
    };
    if ((Q205_MARVINJOINEDRENEGADES) == (1)) {
        if ((Q205_PREPAREMEAL) == (1)) {
            if (C_GOTINGRENDIENTS_FATSTEW(HERO)) {
                Q205_PREPAREMEAL = 2;
                B_LOGENTRY(TOPIC_Q205, LOG_Q205_MEAL_GOTINGRENDIENTS);
            };
        } else if ((Q205_PREPAREMEAL) == (2)) {
            if (((NPC_HASITEMS(HERO, 36682)) >= (1)) && ((NPC_ISINSTATE(MIL_6268_BRODDY, 61599)) == (FALSE))) {
                Q205_PREPAREMEAL = 3;
                B_LOGENTRY(TOPIC_Q205, LOG_Q205_MEAL_READY);
                B_STARTOTHERROUTINE(MIL_6268_BRODDY, "Q205_SMELL");
                NPC_REFRESH(MIL_6268_BRODDY);
            };
        };
        if ((Q205_GOTSALVISTUFF) == (FALSE)) {
            if (((NPC_HASITEMS(HERO, 37182)) >= (1)) && ((NPC_HASITEMS(HERO, 37185)) >= (1))) {
                Q205_GOTSALVISTUFF = 1;
                B_LOGENTRY(TOPIC_Q205, LOG_Q205_GOTOUTSTUFF);
            };
        };
    };
    if ((Q205_CHANGETILLRTN) == (FALSE)) {
        if (((NPC_GETDISTTOWP(MIL_6276_TILL, "PART7_CAVE_61")) <= (350)) && ((NPC_ISINSTATE(MIL_6276_TILL, 61599)) == (FALSE))) {
            B_STARTOTHERROUTINE(MIL_6276_TILL, "TURTLE2");
            NPC_REFRESH(MIL_6276_TILL);
            Q205_CHANGETILLRTN = TRUE;
            PRINTD("Till widzi b³otniaki!");
        };
    };
    if ((Q205_TILLKILLSMARVIN) == (TRUE)) {
        if ((Q205_TREEHEROFELL) == (0)) {
            if ((Q205_SPAWNEDEMMACROSSBOW) == (TRUE)) {
                if ((NPC_HASITEMS(HERO, 39714)) >= (1)) {
                    CHANGEVOBCOLLISION("Q205_FALLDOWNCHECK", TRUE, TRUE, TRUE, FALSE);
                    TELEPORTNPCTOWP(1819, "PART7_HERO_FALLDOWN");
                    HERO.FLAGS = 2;
                    HERO.AIVAR[4] = TRUE;
                    AI_SETWALKMODE(HERO, NPC_RUN);
                    WLD_SENDTRIGGER("KM_TREE_01");
                    WLD_SENDTRIGGER("KM_RENEGADE_TREE");
                    AI_WAIT(HERO, 1036831949);
                    Q205_TREEHEROFELL = 1;
                };
            };
        };
        if ((Q205_FELLTOWATER) == (FALSE)) {
            if ((C_BODYSTATECONTAINS(HERO, BS_DIVE)) || (C_BODYSTATECONTAINS(HERO, BS_SWIM))) {
                Q205_FELLTOWATER = TRUE;
                Q205_MARVINCANOPENSACK = TRUE;
                if ((Q205_TREEHEROFELL) == (1)) {
                    WLD_SENDUNTRIGGER("KM_TREE_01");
                    B_LOGENTRY(TOPIC_Q205, LOG_Q205_BRANCHBROKE_V1);
                } else {
                    B_LOGENTRY(TOPIC_Q205, LOG_Q205_BRANCHBROKE_V2);
                };
                CHANGEVOBCOLLISION("Q205_FALLDOWNCHECK", FALSE, FALSE, FALSE, FALSE);
                Q205_TREEHEROFELL = 2;
                Q205_TILLKILLSMARVIN = 0;
                Q205_BERTOHELP();
                HERO.AIVAR[4] = FALSE;
                FF_APPLYONCEEXT(62272, 1000, 3);
            };
        };
    };
}

