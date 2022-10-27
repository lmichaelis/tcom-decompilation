instance DIA_AMB_CITY_SLUMS_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_CITY_SLUMS_EXIT_CONDITION;
    INFORMATION = DIA_AMB_CITY_SLUMS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_CITY_SLUMS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SLUMS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_SLUMS_ABOUTSLUMS(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_CITY_SLUMS_ABOUTSLUMS_CONDITION;
    INFORMATION = DIA_AMB_CITY_SLUMS_ABOUTSLUMS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about slums?";
}

func int DIA_AMB_CITY_SLUMS_ABOUTSLUMS_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SLUMS_ABOUTSLUMS_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutSlums");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V1_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V3_01");
        AI_PLAYANI(SELF, T_SEARCH);
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTSLUMS_V3_02");
        AI_STOPPROCESSINFOS(SELF);
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) {
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V1_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V3_01");
        AI_PLAYANI(SELF, T_SEARCH);
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTSLUMS_V3_02");
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SLUMS_ABOUTHARBOUR(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_CITY_SLUMS_ABOUTHARBOUR_CONDITION;
    INFORMATION = DIA_AMB_CITY_SLUMS_ABOUTHARBOUR_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about the harbour?";
}

func int DIA_AMB_CITY_SLUMS_ABOUTHARBOUR_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SLUMS_ABOUTHARBOUR_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutHarbour");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V1_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V3_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_ABOUTHARBOR_V3_02");
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V1_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V3_01");
        B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_ABOUTHARBOR_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SLUMS_WHATSSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_CITY_SLUMS_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_SLUMS_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_AMB_CITY_SLUMS_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SLUMS_WHATSSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if (((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (31))) || ((SELF.VOICE) == (34))) {
        if ((KAPITEL) == (2)) {
            if ((SELF.VOICE) == (32)) {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
            } else {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH2");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (3)) {
            if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH3_WHITEDAY");
            } else {
                B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH3");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (4)) {
            if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH4_GRAYSON");
            } else {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH4");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (5)) {
            B_SAY(SELF, OTHER, "$AMB_SLUMS_FEMALE_HOWSLIFE_CH5");
        };
    };
    if ((KAPITEL) == (2)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH2");
    };
    if ((KAPITEL) == (3)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH3_WHITEDAY");
        } else {
            B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH3");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (4)) {
        if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH4_GRAYSON");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH4");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (5)) {
        B_SAY(SELF, OTHER, "$AMB_SLUMS_MALE_HOWSLIFE_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_SLUMS(var C_NPC SLF) {
    DIA_AMB_CITY_SLUMS_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SLUMS_ABOUTSLUMS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SLUMS_ABOUTHARBOUR.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SLUMS_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}

