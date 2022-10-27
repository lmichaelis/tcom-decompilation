instance DIA_AMB_CITY_HOMELESS_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_CITY_HOMELESS_EXIT_CONDITION;
    INFORMATION = DIA_AMB_CITY_HOMELESS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_CITY_HOMELESS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_HOMELESS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_HOMELESS_CITY(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_CITY_HOMELESS_CITY_CONDITION;
    INFORMATION = DIA_AMB_CITY_HOMELESS_CITY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about the city?";
}

func int DIA_AMB_CITY_HOMELESS_CITY_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_HOMELESS_CITY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutCity");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_ABOUTCITY_V1");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_ABOUTCITY_V2");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_ABOUTCITY_V3");
    };
    if ((SELF.VOICE) == (33)) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_ABOUTCITY_V1");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_ABOUTCITY_V2");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_ABOUTCITY_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_HOMELESS_WHATSSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_CITY_HOMELESS_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_HOMELESS_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_AMB_CITY_HOMELESS_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_HOMELESS_WHATSSUP_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (34))) {
        if ((KAPITEL) == (2)) {
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH2");
        } else if ((KAPITEL) == (3)) {
            if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
                AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH3_WHITEDAY");
            } else {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH3");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (4)) {
            if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH4_GRAYSON");
            } else {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH4");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_FEMALE_HOWSLIFE_CH5");
        };
    };
    if ((KAPITEL) == (2)) {
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH2");
    };
    if ((KAPITEL) == (3)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH3_WHITEDAY");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH3");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (4)) {
        if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH4_GRAYSON");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH4");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (5)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_HOMELESS_MALE_HOWSLIFE_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_HOMELESS(var C_NPC SLF) {
    DIA_AMB_CITY_HOMELESS_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_HOMELESS_CITY.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_HOMELESS_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}

