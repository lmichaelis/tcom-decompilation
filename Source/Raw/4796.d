func void EVENTSMANAGER_SQ406() {
    if ((LOG_GETSTATUS(MIS_SQ406)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ406_RAZOR_FIGHTWITH_GETTER) == (1)) {
        if (NPC_ISDEAD(PIR_1313_GETTER)) {
            SQ406_RAZOR_FIGHTWITH_GETTER = 2;
            if ((SQ406_USEDPOTIONS) >= (3)) {
                B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GETTERISDEAD);
            } else {
                B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GETTERISDEAD_V2);
            };
        };
    };
    if ((SQ406_RAZOR_FIGHTWITH_GHOST) == (1)) {
        if (NPC_ISDEAD(PIR_6322_GHOST)) {
            SQ406_RAZOR_FIGHTWITH_GHOST = 2;
            if ((SQ406_USEDPOTIONS) >= (3)) {
                B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOSTISDEAD);
            } else {
                B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOSTISDEAD_V2);
            };
        };
    };
    if ((SQ406_HAVENLOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_IN_17")) <= (0x1388)) {
            SQ406_HAVENLOGENTRY = 1;
            B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_HAVEN);
        };
    };
    if ((SQ406_NEARGETTER_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTONPC(HERO, PIR_1313_GETTER)) <= (800)) {
            SQ406_NEARGETTER_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GETTER);
        };
    };
    if ((SQ406_NEARGHOST_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTONPC(HERO, PIR_6322_GHOST)) <= (800)) {
            SQ406_NEARGHOST_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOST);
        };
    };
    if ((SQ406_FIGHTWITHGHOST_CLEARATTITUDE) == (1)) {
        if (NPC_ISINSTATE(PIR_6322_GHOST, 0xf0a3)) {
            SQ406_FIGHTWITHGHOST_CLEARATTITUDE = 2;
            NPC_SETATTITUDE(PIR_6322_GHOST, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(PIR_6322_GHOST, ATT_NEUTRAL);
            PIR_6322_GHOST.AIVAR[1] = CRIME_NONE;
            MDL_STARTFACEANI(PIR_6322_GHOST, S_NEUTRAL, 0x3f800000, -1082130432);
            PRINTD("Clear Attitude");
        };
    };
    if ((SQ406_NEARCAVE_CHANGERTN) == (0)) {
        if (((((NPC_GETDISTTOWP(PIR_1313_GETTER, "PART17_CAVE_CAMPFIRE_01")) <= (0x4b0)) && ((SQ406_GETTER_POTION) == (3))) || (((NPC_GETDISTTOWP(PIR_6322_GHOST, "PART17_CAVE_CAMPFIRE_01")) <= (0x4b0)) && ((SQ406_GHOST_POTION) == (3)))) || (((NPC_GETDISTTOWP(PIR_1326_DAN, "PART17_CAVE_CAMPFIRE_01")) <= (0x4b0)) && ((SQ406_DAN_POTION) == (3)))) {
            if (((((NPC_ISINSTATE(PIR_1313_GETTER, 0xf09f)) == (FALSE)) && ((SQ406_GETTER_POTION) == (3))) || (((NPC_ISINSTATE(PIR_6322_GHOST, 0xf09f)) == (FALSE)) && ((SQ406_GHOST_POTION) == (3)))) || (((NPC_ISINSTATE(PIR_1326_DAN, 0xf09f)) == (FALSE)) && ((SQ406_DAN_POTION) == (3)))) {
                PRINTD("Zmiana RTN");
                SQ406_NEARCAVE_CHANGERTN = 1;
                WLD_SENDTRIGGER("KM_FRIENDS_FIREPLACE_MOVER");
                if ((SQ406_GETTER_POTION) == (3)) {
                    B_STARTOTHERROUTINE(PIR_1313_GETTER, "SQ406_CAVE");
                    NPC_REFRESH(PIR_1313_GETTER);
                } else if ((SQ406_GHOST_POTION) == (3)) {
                    B_STARTOTHERROUTINE(PIR_6322_GHOST, "SQ406_CAVE");
                    NPC_REFRESH(PIR_6322_GHOST);
                } else if ((SQ406_DAN_POTION) == (3)) {
                    B_STARTOTHERROUTINE(PIR_1326_DAN, "SQ406_CAVE");
                    NPC_REFRESH(PIR_1326_DAN);
                };
            };
        };
    };
    if ((SQ406_NEARCAVE_CHANGERTN) == (1)) {
        if ((SQ406_GETTER_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_1313_GETTER)) <= (0xabe)) {
                MDL_SETVISUALBODY(PIR_1313_GETTER, "KM_ARMOR_CHAIN_RAZOR", 1, 0, HUMHEADNOTHING, FACE_L_GETTER, 0, NO_ARMOR);
                SQ406_NEARCAVE_CHANGERTN = 2;
                PRINTD("Odœwie¿ g³owê");
            };
        } else if ((SQ406_GHOST_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_6322_GHOST)) <= (0xabe)) {
                MDL_SETVISUALBODY(PIR_6322_GHOST, "KM_ARMOR_PIRAT_RAZOR", 1, 0, HUMHEADNOTHING, FACE_N_GHOST, 0, NO_ARMOR);
                SQ406_NEARCAVE_CHANGERTN = 2;
                PRINTD("Odœwie¿ g³owê");
            };
        } else if ((SQ406_DAN_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_1326_DAN)) <= (0xabe)) {
                MDL_SETVISUALBODY(PIR_1326_DAN, "KM_ARMOR_PIRAT_RAZOR", 1, 0, HUMHEADNOTHING, FACE_N_DAN, 0, NO_ARMOR);
                SQ406_NEARCAVE_CHANGERTN = 2;
                PRINTD("Odœwie¿ g³owê");
            };
        };
    };
    if ((SQ406_NEARCAVE_CHANGERTN) == (2)) {
        if ((SQ406_GETTER_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_1313_GETTER)) >= (0xabe)) {
                SQ406_NEARCAVE_CHANGERTN = 1;
                PRINTD("G³owa gotowa do odœwie¿enia");
            };
        } else if ((SQ406_GHOST_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_6322_GHOST)) >= (0xabe)) {
                SQ406_NEARCAVE_CHANGERTN = 1;
                PRINTD("G³owa gotowa do odœwie¿enia");
            };
        } else if ((SQ406_DAN_POTION) == (3)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_1326_DAN)) >= (0xabe)) {
                SQ406_NEARCAVE_CHANGERTN = 1;
                PRINTD("G³owa gotowa do odœwie¿enia");
            };
        };
    };
    if ((SQ406_FINISHTESTINGPOTIONS_LOGENTRY) == (FALSE)) {
        if ((SQ406_USEDPOTIONS) >= (3)) {
            SQ406_FINISHTESTINGPOTIONS_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_TESTINGDONE);
        };
    };
    if ((SQ406_RAZORDAN) == (1)) {
        if (HLP_ISVALIDNPC(SNAPPER_DAN)) {
            if ((NPC_GETDISTTONPC(HERO, SNAPPER_DAN)) <= (750)) {
                SQ406_RAZORDAN = 2;
                B_LOGENTRY(TOPIC_SQ406, LOG_SQ406_FOUNDRAZORDAN);
            };
        };
    };
}

