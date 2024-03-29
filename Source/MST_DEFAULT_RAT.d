prototype MST_DEFAULT_RAT(C_NPC) {
    NAME[0] = NAME_RAT;
    GUILD = GIL_SHEEP;
    AIVAR[43] = ID_GIANT_RAT;
    LEVEL = 1;
    ATTRIBUTE[4] = 5;
    ATTRIBUTE[5] = 5;
    ATTRIBUTE[1] = 5;
    ATTRIBUTE[0] = 5;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 0;
    PROTECTION[2] = 0;
    PROTECTION[6] = 0;
    PROTECTION[3] = 0;
    PROTECTION[4] = 0;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_EDGE;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

func void B_SETVISUALS_RAT() {
    MDL_SETVISUAL(SELF, GIANTRATLITTLEMDS);
    MDL_SETVISUALBODY(SELF, "RAT_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    MDL_SETMODELSCALE(SELF, 1048576000, 1045220557, 1045220557);
}

func void B_SETVISUALS_FLOURRAT() {
    MDL_SETVISUAL(SELF, GIANTRATLITTLEMDS);
    MDL_SETVISUALBODY(SELF, "RAT_Flour_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    MDL_SETMODELSCALE(SELF, 1048576000, 1045220557, 1045220557);
}

func void B_SETVISUALS_ALF_RAT() {
    MDL_SETVISUAL(SELF, GIANTRATLITTLEMDS);
    MDL_SETVISUALBODY(SELF, "RAT_ALF_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    MDL_SETMODELSCALE(SELF, 1048576000, 1045220557, 1045220557);
}

instance RAT(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT);
    CREATEINVITEMS(RAT, 36403, 1);
}

instance RATFLOUR(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    GUILD = GIL_MEATBUG;
    B_SETVISUALS_FLOURRAT();
    NPC_SETTOFISTMODE(RATFLOUR);
    CREATEINVITEMS(RATFLOUR, 36403, 1);
}

instance NONE_13503_ALF(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    NAME[0] = NAME_TAIL;
    ID = 13503;
    B_SETVISUALS_ALF_RAT();
    NPC_SETTOFISTMODE(NONE_13503_ALF);
    DAILY_ROUTINE = RTN_START_13503;
    CREATEINVITEMS(NONE_13503_ALF, 36403, 1);
}

func void RTN_START_13503() {
    TA_STAND_WP(8, 0, 22, 0, "VILLAGE_PATH_204");
    TA_STAND_WP(22, 0, 8, 0, TOT2);
}

func void RTN_TOT_13503() {
    TA_STAND_WP(8, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 8, 0, TOT2);
}

instance RAT_Q101_01(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_01);
    CREATEINVITEMS(RAT_Q101_01, 36403, 1);
}

instance RAT_Q101_02(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_02);
    CREATEINVITEMS(RAT_Q101_02, 36403, 1);
}

instance RAT_Q101_03(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_03);
    CREATEINVITEMS(RAT_Q101_03, 36403, 1);
}

instance RAT_Q101_04(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_04);
    CREATEINVITEMS(RAT_Q101_04, 36403, 1);
}

instance RAT_Q101_05(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_05);
    CREATEINVITEMS(RAT_Q101_05, 36403, 1);
}

instance RAT_Q101_06(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q101_06);
    CREATEINVITEMS(RAT_Q101_06, 36403, 1);
}

instance RAT_KQ406(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    FLAGS = 2;
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_KQ406);
    CREATEINVITEMS(RAT_KQ406, 36403, 1);
}

instance RAT_Q501(MST_DEFAULT_RAT) {
    MST_DEFAULT_RAT();
    FLAGS = NPC_FLAG_IMPORTANT;
    B_SETVISUALS_RAT();
    NPC_SETTOFISTMODE(RAT_Q501);
    CREATEINVITEMS(RAT_Q501, 36403, 1);
}

