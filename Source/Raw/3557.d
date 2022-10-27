func void Q601_PREPARENOVIZE() {
    if ((NPC_ISDEAD(NOV_209_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_209_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_209_NOVIZE);
        TELEPORTNPCTOWP(0xdcc4, NOV_209_NOVIZE.WP);
        NOV_209_NOVIZE.FLAGS = 2;
        NOV_209_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_210_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_210_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_210_NOVIZE);
        TELEPORTNPCTOWP(0xdcca, NOV_210_NOVIZE.WP);
        NOV_210_NOVIZE.FLAGS = 2;
        NOV_210_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_212_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_212_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_212_NOVIZE);
        TELEPORTNPCTOWP(0xdcd0, NOV_212_NOVIZE.WP);
        NOV_212_NOVIZE.FLAGS = 2;
        NOV_212_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_217_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_217_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_217_NOVIZE);
        TELEPORTNPCTOWP(0xdcd6, NOV_217_NOVIZE.WP);
        NOV_217_NOVIZE.FLAGS = 2;
        NOV_217_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_218_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_218_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_218_NOVIZE);
        TELEPORTNPCTOWP(0xdcdc, NOV_218_NOVIZE.WP);
        NOV_218_NOVIZE.FLAGS = 2;
        NOV_218_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_219_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_219_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_219_NOVIZE);
        TELEPORTNPCTOWP(0xdcdf, NOV_219_NOVIZE.WP);
        NOV_219_NOVIZE.FLAGS = 2;
        NOV_219_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_220_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_220_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_220_NOVIZE);
        TELEPORTNPCTOWP(0xdce2, NOV_220_NOVIZE.WP);
        NOV_220_NOVIZE.FLAGS = 2;
        NOV_220_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(NOV_221_NOVIZE)) == (FALSE)) {
        B_STARTOTHERROUTINE(NOV_221_NOVIZE, "PRIORDEAD");
        NPC_REFRESH(NOV_221_NOVIZE);
        TELEPORTNPCTOWP(0xdce5, NOV_221_NOVIZE.WP);
        NOV_221_NOVIZE.FLAGS = 2;
        NOV_221_NOVIZE.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(KDW_301_CUSTO)) == (FALSE)) {
        B_STARTOTHERROUTINE(KDW_301_CUSTO, "PRIORDEAD");
        NPC_REFRESH(KDW_301_CUSTO);
        TELEPORTNPCTOWP(0xdd24, KDW_301_CUSTO.WP);
        KDW_301_CUSTO.FLAGS = 2;
        KDW_301_CUSTO.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(KDW_303_RIEROL)) == (FALSE)) {
        B_STARTOTHERROUTINE(KDW_303_RIEROL, "PRIORDEAD");
        NPC_REFRESH(KDW_303_RIEROL);
        TELEPORTNPCTOWP(0xdd4a, KDW_303_RIEROL.WP);
        KDW_303_RIEROL.FLAGS = 2;
        KDW_303_RIEROL.AIVAR[15] = TRUE;
    };
    if ((NPC_ISDEAD(KDW_206_OTHEKAR)) == (FALSE)) {
        B_STARTOTHERROUTINE(KDW_206_OTHEKAR, "PRIORDEAD");
        NPC_REFRESH(KDW_206_OTHEKAR);
        TELEPORTNPCTOWP(0xdd51, KDW_206_OTHEKAR.WP);
        KDW_206_OTHEKAR.FLAGS = 2;
        KDW_206_OTHEKAR.AIVAR[15] = TRUE;
    };
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_HEALROOM");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_05, TRUE, TRUE, TRUE, TRUE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_TOWER");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_13, TRUE, TRUE, TRUE, TRUE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_RIEROL");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_06, TRUE, TRUE, TRUE, TRUE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_DUNGEON_01");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_07, TRUE, TRUE, TRUE, TRUE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_DUNGEON_02");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_08, TRUE, TRUE, TRUE, TRUE);
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_10, FALSE, FALSE, FALSE, FALSE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_MAGEROOM_03");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_11, TRUE, TRUE, TRUE, TRUE);
    DUMMYFUNCWITHSTRINGPARAMETER("MONASTERY_DOOR_MAGEROOM_04");
    CHANGEVOBCOLLISION(RESERVED_CONST_STRING_12, TRUE, TRUE, TRUE, TRUE);
    WLD_SENDTRIGGER("MONASTERY_GATE_01");
    WLD_SENDTRIGGER("MONASTERY_GATE_03");
    if ((NPC_ISDEAD(KDW_200_PRIOR)) == (FALSE)) {
        B_REMOVENPC(0xdd1f);
    };
    if ((NPC_ISDEAD(BAU_211_GARDENER)) == (FALSE)) {
        B_REMOVENPC(0xdca9);
    };
    if ((NPC_ISDEAD(NOV_13683_ARTUR)) == (FALSE)) {
        B_REMOVENPC(0xdd03);
    };
    if ((NPC_ISDEAD(NOV_222_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdce8);
    };
    if ((NPC_ISDEAD(NOV_223_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdcec);
    };
    if ((NPC_ISDEAD(NOV_224_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdcf0);
    };
    if ((NPC_ISDEAD(NOV_225_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdcf4);
    };
    if ((NPC_ISDEAD(NOV_226_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdcf8);
    };
    if ((NPC_ISDEAD(NOV_227_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdcfb);
    };
    if ((NPC_ISDEAD(NOV_201_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdda1);
    };
    if ((NPC_ISDEAD(NOV_204_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xddab);
    };
    if ((NPC_ISDEAD(NOV_207_STEFAN)) == (FALSE)) {
        B_REMOVENPC(0xddb0);
    };
    if ((NPC_ISDEAD(NOV_251_CURTIS)) == (FALSE)) {
        B_REMOVENPC(0xddb4);
    };
    if ((NPC_ISDEAD(NOV_205_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdd13);
    };
    if ((NPC_ISDEAD(NOV_208_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdd19);
    };
    if ((NPC_ISDEAD(NOV_13684_FRED)) == (FALSE)) {
        B_REMOVENPC(0xdd07);
    };
    if ((NPC_ISDEAD(NOV_13690_NOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xdd0c);
    };
    if ((NPC_ISDEAD(NOV_13682_RUNNINGNOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xddbc);
    };
    if ((NPC_ISDEAD(NOV_13777_FISHINGNOVIZE)) == (FALSE)) {
        B_REMOVENPC(0xddc4);
    };
}

func void Q601_TELEPORTSILBACHNPC() {
    B_STARTOTHERROUTINE(BAU_711_THORSTEN, "MONASTERY");
    NPC_REFRESH(BAU_711_THORSTEN);
    TELEPORTNPCTOWP(0xe0e5, BAU_711_THORSTEN.WP);
    B_STARTOTHERROUTINE(KDW_214_BADULF, "MONASTERY");
    NPC_REFRESH(KDW_214_BADULF);
    TELEPORTNPCTOWP(0xdd58, KDW_214_BADULF.WP);
    B_STARTOTHERROUTINE(NONE_6262_CARDEN, "MONASTERY2");
    NPC_REFRESH(NONE_6262_CARDEN);
    TELEPORTNPCTOWP(0xe162, NONE_6262_CARDEN.WP);
    FF_APPLYONCEEXTGT(0xf982, 0, -(1));
}

func void Q601_TELEPORTSILBACHNPC_APPLY() {
    if ((Q601_TELEPORTSILBACHNPC_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q601_TeleportSilbachNPC_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q601_MOVER_THORSTEN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_05", FALSE, FALSE, FALSE, FALSE);
        WLD_SENDTRIGGER("Q601_MOVER_THORSTEN");
        Q601_TELEPORTSILBACHNPC_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - Q601_TeleportSilbachNPC_Apply");
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q601_VOB_THORSTEN_05", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf982);
        Q601_TELEPORTSILBACHNPC_COUNT = 0;
    };
}

var int Q601_TELEPORTSILBACHNPC_APPLY.Q601_TELEPORTSILBACHNPC_COUNT = 0;
instance Q601_TELEPORTSILBACHNPC_APPLY.MOVER1(ZCMOVER)
var int Q601_TELEPORTSILBACHNPC_APPLY.MOVPTR1 = 0;
func void Q601_SPAWNWOLFSSON() {
    PRINTD("Wilczy synowie przybyli");
    WLD_INSERTNPC(0xe289, "PART15_TOWER_SMALLTALK02");
    WLD_INSERTNPC(0xe28b, "PART15_PATH_72");
    WLD_INSERTNPC(0xe28d, "PART15_TOWER_SMALLTALK01");
    WLD_INSERTNPC(0xe28f, "PART15_PATH_76");
    WLD_INSERTNPC(0xe291, "PART15_TOWER_LOOKOUT01");
    if (!(NPC_ISDEAD(MIL_4028_KLAUS))) {
        B_KILLNPC(0xe2bd);
    };
    if (!(NPC_ISDEAD(MIL_4029_JOHAN))) {
        B_KILLNPC(0xe2bf);
    };
}

func void Q601_REMOVEMONSTERS() {
    if (!(NPC_ISDEAD(SCAVENGER_Q601_01))) {
        B_REMOVENPC(0xc623);
    };
    if (!(NPC_ISDEAD(SCAVENGER_Q601_02))) {
        B_REMOVENPC(0xc624);
    };
    if (!(NPC_ISDEAD(SCAVENGER_Q601_03))) {
        B_REMOVENPC(0xc625);
    };
    if (!(NPC_ISDEAD(SCAVENGER_Q601_04))) {
        B_REMOVENPC(0xc626);
    };
    if (!(NPC_ISDEAD(SCAVENGER_Q601_05))) {
        B_REMOVENPC(0xc627);
    };
}
