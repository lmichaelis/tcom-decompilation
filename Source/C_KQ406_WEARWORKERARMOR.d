func int C_KQ406_WEARWORKERARMOR(var C_NPC NPC) {
    var C_ITEM ITM;
    if ((NPC_HASEQUIPPEDARMOR(NPC)) == (TRUE)) {
        ITM = NPC_GETEQUIPPEDARMOR(NPC);
        if ((((((((((((((((((HLP_ISITEM(ITM, 33906)) == (TRUE)) || ((HLP_ISITEM(ITM, 33907)) == (TRUE))) || ((HLP_ISITEM(ITM, 35581)) == (TRUE))) || ((HLP_ISITEM(ITM, 35571)) == (TRUE))) || ((HLP_ISITEM(ITM, 35572)) == (TRUE))) || ((HLP_ISITEM(ITM, 35578)) == (TRUE))) || ((HLP_ISITEM(ITM, 35579)) == (TRUE))) || ((HLP_ISITEM(ITM, 35580)) == (TRUE))) || ((HLP_ISITEM(ITM, 35394)) == (TRUE))) || ((HLP_ISITEM(ITM, 35395)) == (TRUE))) || ((HLP_ISITEM(ITM, 35396)) == (TRUE))) || ((HLP_ISITEM(ITM, 35397)) == (TRUE))) || ((HLP_ISITEM(ITM, 35410)) == (TRUE))) || ((HLP_ISITEM(ITM, 35411)) == (TRUE))) || ((HLP_ISITEM(ITM, 35412)) == (TRUE))) || ((HLP_ISITEM(ITM, 35413)) == (TRUE))) || ((HLP_ISITEM(ITM, 33925)) == (TRUE))) {
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

func void KQ406_PREPARESCENE() {
    FF_APPLYONCEEXTGT(34759, 0, -(1));
}

func void KQ406_PREPARESCENE_APPLY() {
    var int MOVPTR4;
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER4;
    var int MOVPTR2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int KQ406_PREPARESCENE_COUNT;
    if ((KQ406_PREPARESCENE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - KQ406_PrepareScene_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KQ406_MOVER_CRATE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KQ406_MOVER_CRATE_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("KQ406_MOVER_CRATE_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("KQ406_MOVER_CRATE_04");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        CHANGEVOBCOLLISION("KQ406_CRATE_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_04", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_01");
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_02");
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_03");
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_04");
        KQ406_PREPARESCENE_COUNT = 1;
    };
    if (((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - KQ406_PrepareScene_Apply");
        CHANGEVOBCOLLISION("KQ406_CRATE_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ406_CRATE_04", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(34759);
        KQ406_PREPARESCENE_COUNT = 0;
    };
}

func void KQ406_PREPARENPC() {
    if (HLP_ISVALIDNPC(VLK_6074_GUY)) {
        if ((NPC_ISDEAD(VLK_6074_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6074_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6101_WORKER)) {
        if ((NPC_ISDEAD(VLK_6101_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6101_WORKER, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6094_GUY)) {
        if ((NPC_ISDEAD(VLK_6094_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6094_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6099_GUY)) {
        if ((NPC_ISDEAD(VLK_6099_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6099_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        if ((NPC_ISDEAD(VLK_6084_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6084_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6102_WORKER)) {
        if ((NPC_ISDEAD(VLK_6102_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6102_WORKER, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6069_GUY)) {
        if ((NPC_ISDEAD(VLK_6069_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6069_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_13373_GUY)) {
        if ((NPC_ISDEAD(VLK_13373_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13373_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6070_GUY)) {
        if ((NPC_ISDEAD(VLK_6070_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6070_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6068_GUY)) {
        if ((NPC_ISDEAD(VLK_6068_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6068_GUY, "KQ406_STOP");
        };
    };
    if (HLP_ISVALIDNPC(VLK_6083_WORKER)) {
        if ((NPC_ISDEAD(VLK_6083_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6083_WORKER, "KQ406_STOP");
        };
    };
    if (((Q504_RUUDVOLFZACKE) == (0)) && ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS))) {
        B_STARTOTHERROUTINE(VLK_6282_RUUD, "KQ406_STOP");
        KQ406_RUUD_RTNCHECK = 1;
        NPC_REFRESH(VLK_6282_RUUD);
        TELEPORTNPCTOWP(54569, VLK_6282_RUUD.WP);
    };
    WLD_INSERTNPC(54729, "HARBOUR_KQ406_WORKER");
}

func void KQ406_COUNTPOINTS() {
    KQ406_POINTS = (KQ406_POINTS) + (1);
    PRINTD(CS2("Liczba wykonanych task�w: ", INTTOSTRING(KQ406_POINTS)));
    if ((KQ406_POINTS) == (3)) {
        B_LOGENTRY(TOPIC_KQ406, LOG_KQ406_TASKSDONE);
        KQ406_WAITFORSABOTEUR = TRUE;
        KQ406_WAITFORSABOTEUR_DAY = WLD_GETDAY();
    };
}

func void KQ406_PREPARERATPOTIONPLACES() {
    KQ406_BOUGHTPOTION = 1;
    WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_01");
    WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_02");
}

func void KQ406_PREPAREANGRYMOB() {
    if ((KQ406_BOUGHTPOTION) == (1)) {
        if ((KQ406_RATPOTION_PLACE_01) == (FALSE)) {
            WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_01");
        };
        if ((KQ406_RATPOTION_PLACE_02) == (FALSE)) {
            WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_02");
        };
    };
    WLD_INSERTNPC(50694, "HARBOUR_WRKSHP_REPAIR01");
    if (HLP_ISVALIDNPC(VLK_6074_GUY)) {
        if ((NPC_ISDEAD(VLK_6074_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6074_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6074_GUY);
            TELEPORTNPCTOWP(54333, VLK_6074_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6101_WORKER)) {
        if ((NPC_ISDEAD(VLK_6101_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6101_WORKER, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6101_WORKER);
            TELEPORTNPCTOWP(54392, VLK_6101_WORKER.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6094_GUY)) {
        if ((NPC_ISDEAD(VLK_6094_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6094_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6094_GUY);
            TELEPORTNPCTOWP(54373, VLK_6094_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6099_GUY)) {
        if ((NPC_ISDEAD(VLK_6099_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6099_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6099_GUY);
            TELEPORTNPCTOWP(54385, VLK_6099_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        if ((NPC_ISDEAD(VLK_6084_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6084_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6084_GUY);
            TELEPORTNPCTOWP(54352, VLK_6084_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6102_WORKER)) {
        if ((NPC_ISDEAD(VLK_6102_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6102_WORKER, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6102_WORKER);
            TELEPORTNPCTOWP(54397, VLK_6102_WORKER.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6069_GUY)) {
        if ((NPC_ISDEAD(VLK_6069_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6069_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6069_GUY);
            TELEPORTNPCTOWP(54315, VLK_6069_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_13373_GUY)) {
        if ((NPC_ISDEAD(VLK_13373_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13373_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_13373_GUY);
            TELEPORTNPCTOWP(54193, VLK_13373_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6070_GUY)) {
        if ((NPC_ISDEAD(VLK_6070_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6070_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6070_GUY);
            TELEPORTNPCTOWP(54319, VLK_6070_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6068_GUY)) {
        if ((NPC_ISDEAD(VLK_6068_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6068_GUY, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6068_GUY);
            TELEPORTNPCTOWP(54310, VLK_6068_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6083_WORKER)) {
        if ((NPC_ISDEAD(VLK_6083_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6083_WORKER, "KQ406_ANGRYMOB");
            NPC_REFRESH(VLK_6083_WORKER);
            TELEPORTNPCTOWP(54347, VLK_6083_WORKER.WP);
        };
    };
    if (((Q504_RUUDVOLFZACKE) == (0)) && ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS))) {
        B_STARTOTHERROUTINE(VLK_6282_RUUD, "KQ406_ANGRYMOB");
        KQ406_RUUD_RTNCHECK = 2;
        NPC_REFRESH(VLK_6282_RUUD);
        TELEPORTNPCTOWP(54569, VLK_6282_RUUD.WP);
    };
    B_STARTOTHERROUTINE(VLK_10036_DACK, "KQ406_ANGRYMOB");
    NPC_REFRESH(VLK_10036_DACK);
    TELEPORTNPCTOWP(54499, VLK_10036_DACK.WP);
    if (((KQ406_RATPOTION_PLACE_01) == (TRUE)) && ((KQ406_RATPOTION_PLACE_02) == (TRUE))) {
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_01");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_02");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_03");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_04");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_05");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_07");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_08");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_09");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_10");
        WLD_INSERTNPC(50683, "FP_ROAM_PARTM6_KQ406_RAT_11");
    };
    WLD_INSERTNPC(54733, "HARBOUR_KQ406_ANGRYMOB_11");
    B_LOGENTRY(TOPIC_KQ406, LOG_KQ406_GOBACK);
}

func void KQ406_TELEPORTKNUT() {
    HERO.AIVAR[4] = FALSE;
    FF_APPLYONCEEXTGT(34774, 0, -(1));
    B_STARTOTHERROUTINE(BAU_2241_KNUT, "KQ406_HARBOUR");
    NPC_REFRESH(BAU_2241_KNUT);
    TELEPORTNPCTOWP(57264, BAU_2241_KNUT.WP);
    if ((NPC_ISDEAD(BAU_2278_WOODCUTTER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_2278_WOODCUTTER, "KQ406_HARBOUR");
        NPC_REFRESH(BAU_2278_WOODCUTTER);
        TELEPORTNPCTOWP(57241, BAU_2278_WOODCUTTER.WP);
    };
    if ((NPC_ISDEAD(BAU_2276_GLYNN)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_2276_GLYNN, "KQ406_HARBOUR");
        NPC_REFRESH(BAU_2276_GLYNN);
        TELEPORTNPCTOWP(57271, BAU_2276_GLYNN.WP);
    };
    if ((SQ101_NIRKOCOMEBACKTOWORK) == (TRUE)) {
        B_STARTOTHERROUTINE(BAU_2279_NIRKO, "KQ406_WAIT");
        NPC_REFRESH(BAU_2279_NIRKO);
        TELEPORTNPCTOWP(57280, BAU_2279_NIRKO.WP);
    };
    if ((Q504_LOWELLVOLFZACKE) == (0)) {
        B_STARTOTHERROUTINE(BAU_2277_LOWELL, "KQ406_WAIT");
        NPC_REFRESH(BAU_2277_LOWELL);
        TELEPORTNPCTOWP(57274, BAU_2277_LOWELL.WP);
    };
    if ((NPC_ISDEAD(BAU_9500_WOODCUTTER)) == (FALSE)) {
        B_KILLNPC(57244);
        WLD_INSERTNPC(50308, RESERVED_CONST_STRING_25);
    };
}

func void KQ406_TELEPORTKNUT_APPLY() {
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_01", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_02", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_03", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_04", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_05", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_06", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_07", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_08", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_09", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_10", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_11", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_12", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_13", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_14", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_15", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_16", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_17", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_18", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_19", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_20", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_21", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_22", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_23", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_24", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_25", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_26", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_27", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_28", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_29", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_30", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_31", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_32", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_33", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_34", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_35", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_36", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_37", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_38", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_39", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_40", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_41", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_42", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("WOODCUTTERS_VOB_43", FALSE, FALSE, FALSE, FALSE);
    WLD_SENDTRIGGER("KQ406_MOVER_WOODCUTTER_CAMP");
    FF_REMOVE(34774);
}

func void KQ406_TELEPORTHUXLAY() {
    B_STARTOTHERROUTINE(MIL_13490_RICHARD, "KQ406_SEARCH");
    NPC_REFRESH(MIL_13490_RICHARD);
    TELEPORTNPCTOWP(53734, MIL_13490_RICHARD.WP);
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, TOT);
    NPC_REFRESH(MIL_13382_HUXLAY);
    TELEPORTNPCTOWP(53719, MIL_13382_HUXLAY.WP);
    B_STARTOTHERROUTINE(NONE_11068_GRAYSON, START);
    NPC_REFRESH(NONE_11068_GRAYSON);
    TELEPORTNPCTOWP(53744, NONE_11068_GRAYSON.WP);
}

func void KQ406_PREPAREANSKAR() {
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ406_TIED");
    NPC_REFRESH(MIL_13382_HUXLAY);
    TELEPORTNPCTOWP(53719, MIL_13382_HUXLAY.WP);
    NPC_CHANGEARMOR(MIL_13382_HUXLAY, 35393);
    NPC_REMOVEINVITEMS(MIL_13382_HUXLAY, 35615, 1);
    WLD_INSERTNPC(54595, "HARBOUR_KQ406_ANSKAR");
}

func void KQ406_ENDANSKERDIALOGUE() {
    FF_APPLYONCEEXT(34778, 75, 4);
}

func void KQ406_ENDANSKERDIALOGUE_APPLY() {
    var int KQ406_ENDANSKERDIALOGUE_COUNT;
    KQ406_ENDANSKERDIALOGUE_COUNT = (KQ406_ENDANSKERDIALOGUE_COUNT) + (1);
    if ((KQ406_ENDANSKERDIALOGUE_COUNT) == (4)) {
        HERO.AIVAR[4] = FALSE;
        DIACAM_ENABLE();
        WLD_SENDUNTRIGGER("KQ406_HUXLAY_SHOW");
        AI_FUNCTION(HERO, 91788);
        KQ406_ENDANSKERDIALOGUE_COUNT = 0;
    };
}

func void KQ406_HUXLAYGOWITHANSKAR_FADESCREEN() {
    KQ406_WAITFORFINISHQUEST = 1;
    NPC_REMOVEINVITEMS(MIL_13382_HUXLAY, 35393, 1);
    NPC_EXCHANGEROUTINE(MIL_13382_HUXLAY, START);
    TELEPORTNPCTOWP(53719, MIL_13382_HUXLAY.WP);
    NPC_CLEARAIQUEUE(MIL_13382_HUXLAY);
    NPC_REFRESH(MIL_13382_HUXLAY);
    B_STARTOTHERROUTINE(MIL_13680_ANSKAR, "KQ406_SMALLTALK");
    NPC_REFRESH(MIL_13680_ANSKAR);
    MDL_APPLYOVERLAYMDSTIMED(MIL_13680_ANSKAR, HUMANSTIREDMDS, 300000);
    B_STARTOTHERROUTINE(NONE_11068_GRAYSON, "KQ406_SMALLTALK");
    NPC_REFRESH(NONE_11068_GRAYSON);
    TELEPORTNPCTOWP(1819, "PARTM5_CITYHALL_35");
    AI_TURNTONPC(HERO, NONE_11068_GRAYSON);
    FADESCREENFROMBLACK(1);
}

func void KQ406_HUXLAYGOWITHANSKAR() {
    FADESCREENTOBLACKF(1, 34780, 100);
}

func void KQ406_FINISHCUTSCENE_PREPARE() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(34783, 75, 4);
}

func void KQ406_FINISHCUTSCENE_APPLY() {
    var int KQ406_FINISHCUTSCENE_COUNT;
    KQ406_FINISHCUTSCENE_COUNT = (KQ406_FINISHCUTSCENE_COUNT) + (1);
    if ((KQ406_FINISHCUTSCENE_COUNT) == (4)) {
        CUTSCENE_START(92371);
    };
}

func void KQ406_FINISHCUTSCENEEND_APPLY() {
    var int KQ406_FINISHCUTSCENEEND_COUNT;
    KQ406_FINISHCUTSCENEEND_COUNT = (KQ406_FINISHCUTSCENEEND_COUNT) + (1);
    if ((KQ406_FINISHCUTSCENEEND_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("KQ406_FINISH_01");
        WLD_SENDUNTRIGGER("KQ406_FINISH_02");
        WLD_SENDUNTRIGGER("KQ406_FINISH_03");
        WLD_SENDUNTRIGGER("KQ406_FINISH_04");
        WLD_SENDUNTRIGGER("KQ406_FINISH_05");
        B_STARTOTHERROUTINE(NONE_11068_GRAYSON, START);
        NPC_REFRESH(NONE_11068_GRAYSON);
        B_STARTOTHERROUTINE(MIL_13680_ANSKAR, "TOWNHALL");
        NPC_REFRESH(MIL_13680_ANSKAR);
        MDL_APPLYOVERLAYMDS(MIL_13680_ANSKAR, HUMANSTIREDMDS);
        HERO.AIVAR[4] = FALSE;
    };
}

func void KQ406_REMOVENPC() {
    B_REMOVENPC(50694);
    if (HLP_ISVALIDNPC(VLK_6074_GUY)) {
        if ((NPC_ISDEAD(VLK_6074_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6074_GUY, START);
            NPC_REFRESH(VLK_6074_GUY);
            TELEPORTNPCTOWP(54333, VLK_6074_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6101_WORKER)) {
        if ((NPC_ISDEAD(VLK_6101_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6101_WORKER, START);
            NPC_REFRESH(VLK_6101_WORKER);
            TELEPORTNPCTOWP(54392, VLK_6101_WORKER.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6094_GUY)) {
        if ((NPC_ISDEAD(VLK_6094_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6094_GUY, START);
            NPC_REFRESH(VLK_6094_GUY);
            TELEPORTNPCTOWP(54373, VLK_6094_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6099_GUY)) {
        if ((NPC_ISDEAD(VLK_6099_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6099_GUY, START);
            NPC_REFRESH(VLK_6099_GUY);
            TELEPORTNPCTOWP(54385, VLK_6099_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        if ((NPC_ISDEAD(VLK_6084_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6084_GUY, START);
            NPC_REFRESH(VLK_6084_GUY);
            TELEPORTNPCTOWP(54352, VLK_6084_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6102_WORKER)) {
        if ((NPC_ISDEAD(VLK_6102_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6102_WORKER, START);
            NPC_REFRESH(VLK_6102_WORKER);
            TELEPORTNPCTOWP(54397, VLK_6102_WORKER.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6069_GUY)) {
        if ((NPC_ISDEAD(VLK_6069_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6069_GUY, START);
            NPC_REFRESH(VLK_6069_GUY);
            TELEPORTNPCTOWP(54315, VLK_6069_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_13373_GUY)) {
        if ((NPC_ISDEAD(VLK_13373_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13373_GUY, START);
            NPC_REFRESH(VLK_13373_GUY);
            TELEPORTNPCTOWP(54193, VLK_13373_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6070_GUY)) {
        if ((NPC_ISDEAD(VLK_6070_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6070_GUY, START);
            NPC_REFRESH(VLK_6070_GUY);
            TELEPORTNPCTOWP(54319, VLK_6070_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6068_GUY)) {
        if ((NPC_ISDEAD(VLK_6068_GUY)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6068_GUY, START);
            NPC_REFRESH(VLK_6068_GUY);
            TELEPORTNPCTOWP(54310, VLK_6068_GUY.WP);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6083_WORKER)) {
        if ((NPC_ISDEAD(VLK_6083_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6083_WORKER, START);
            NPC_REFRESH(VLK_6083_WORKER);
            TELEPORTNPCTOWP(54347, VLK_6083_WORKER.WP);
        };
    };
    B_STARTOTHERROUTINE(VLK_10036_DACK, START);
    NPC_REFRESH(VLK_10036_DACK);
    TELEPORTNPCTOWP(54499, VLK_10036_DACK.WP);
    B_REMOVENPC(54733);
}

func void KQ406_REMOVERATLIQUID() {
    if ((KQ406_BOUGHTPOTION) == (1)) {
        if ((KQ406_RATPOTION_PLACE_01) == (TRUE)) {
            WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_LIQUID_01");
        };
        if ((KQ406_RATPOTION_PLACE_02) == (TRUE)) {
            WLD_SENDTRIGGER("KQ406_MOVER_RATPOTION_LIQUID_02");
        };
    };
    DUMMYFUNCWITHSTRINGPARAMETER("KQ406_MOVER_RATPOTION_LIQUID_01");
    DUMMYFUNCWITHSTRINGPARAMETER("KQ406_MOVER_RATPOTION_LIQUID_02");
}

func void KQ406_REMOVEEVENTS_APPLY() {
    if ((KQ406_DESTROYEDCRATE_01) == (FALSE)) {
        CHANGEVOBCOLLISION("KQ406_CRATE_01", FALSE, FALSE, FALSE, TRUE);
    };
    if ((KQ406_DESTROYEDCRATE_02) == (FALSE)) {
        CHANGEVOBCOLLISION("KQ406_CRATE_02", FALSE, FALSE, FALSE, TRUE);
    };
    if ((KQ406_DESTROYEDCRATE_03) == (FALSE)) {
        CHANGEVOBCOLLISION("KQ406_CRATE_03", FALSE, FALSE, FALSE, TRUE);
    };
    if ((KQ406_DESTROYEDCRATE_04) == (FALSE)) {
        CHANGEVOBCOLLISION("KQ406_CRATE_04", FALSE, FALSE, FALSE, TRUE);
    };
    if ((KQ406_DESTROYEDCRATE_01) == (FALSE)) {
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_01");
    };
    WLD_SENDTRIGGER("KQ406_CRATE_DESTROYED_01");
    if ((KQ406_DESTROYEDCRATE_02) == (FALSE)) {
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_02");
    };
    WLD_SENDTRIGGER("KQ406_CRATE_DESTROYED_02");
    if ((KQ406_DESTROYEDCRATE_03) == (FALSE)) {
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_03");
    };
    WLD_SENDTRIGGER("KQ406_CRATE_DESTROYED_03");
    if ((KQ406_DESTROYEDCRATE_04) == (FALSE)) {
        WLD_SENDTRIGGER("KQ406_MOVER_CRATE_04");
    };
    WLD_SENDTRIGGER("KQ406_CRATE_DESTROYED_04");
    FF_REMOVE(34789);
}

