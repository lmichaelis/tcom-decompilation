func int DIA_AMB_VALERIO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_VALERIO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_VALERIO_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_VALERIO_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_VALERIO_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about the vineyard?";
}

func int DIA_AMB_VALERIO_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_VALERIO_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutVineyard");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V1_01");
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V1_02");
    };
    if ((((SELF.VOICE) == (25)) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V2_01");
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V3_01");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_ABOUTVINEYARD_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_VALERIO_LEADER(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_VALERIO_LEADER_CONDITION;
    INFORMATION = DIA_AMB_VALERIO_LEADER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "Who's in charge here?";
}

func int DIA_AMB_VALERIO_LEADER_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_SQ225)) != (LOG_FAILED))) || ((SQ225_FINISHWAY) != (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMB_VALERIO_LEADER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhoIsInChargeHere");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_WHOSINCHARGE_NO_SQ225_V1");
    };
    if ((((SELF.VOICE) == (25)) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_WHOSINCHARGE_NO_SQ225_V2_01");
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_WHOSINCHARGE_NO_SQ225_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_WHOSINCHARGE_NO_SQ225_V3_01");
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_WHOSINCHARGE_NO_SQ225_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_VALERIO_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_VALERIO_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_VALERIO_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_AMB_VALERIO_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_VALERIO_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((KAPITEL) == (1)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH1");
    };
    if ((KAPITEL) == (2)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH2_NO_SQ225");
    };
    if ((KAPITEL) == (3)) {
        if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_FAILED))) || ((SQ225_FINISHWAY) != (0))) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH3_AFTER_SQ225");
        } else {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH2_NO_SQ225");
        };
    };
    if ((KAPITEL) >= (4)) {
        if ((SQ225_FINISHWAY) == (1)) {
            AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH4AND5_HOLDWIGWINS");
        } else if ((SQ225_FINISHWAY) == (2)) {
            AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH4AND5_ANDREASWINS");
        } else if ((SQ225_FINISHWAY) == (3)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_VALERIO_MALE_HOWSLIFE_CH4AND5_PEACE");
        };
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_VALERIO(var C_NPC SLF) {
    DIA_AMB_VALERIO_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_VALERIO_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_VALERIO_LEADER.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_VALERIO_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}

