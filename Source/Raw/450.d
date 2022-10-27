instance DIA_AMB_CITY_SEWERS_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_CITY_SEWERS_EXIT_CONDITION;
    INFORMATION = DIA_AMB_CITY_SEWERS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_CITY_SEWERS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SEWERS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_SEWERS_WHYHERE(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_CITY_SEWERS_WHYHERE_CONDITION;
    INFORMATION = DIA_AMB_CITY_SEWERS_WHYHERE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_AMB_CITY_SEWERS_WHYHERE_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SEWERS_WHYHERE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatAreYouDoing2");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V1_01");
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V1_02");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V3_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_WHYAREYOUHERE_V3_02");
    };
    if ((SELF.VOICE) == (33)) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V1_01");
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V3_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_WHYAREYOUHERE_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SEWERS_ABOUTSEWERS(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_CITY_SEWERS_ABOUTSEWERS_CONDITION;
    INFORMATION = DIA_AMB_CITY_SEWERS_ABOUTSEWERS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about sewers?";
}

func int DIA_AMB_CITY_SEWERS_ABOUTSEWERS_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SEWERS_ABOUTSEWERS_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutSewers");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V1_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V1_02");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V3_01");
        if ((SELF.VOICE) != (28)) {
            B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_ABOUTSEWERS_V3_02");
        };
    };
    if ((SELF.VOICE) == (33)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V1_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V3_01");
        B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_ABOUTSEWERS_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SEWERS_WHATSSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_CITY_SEWERS_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_SEWERS_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_AMB_CITY_SEWERS_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SEWERS_WHATSSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (34))) {
        if ((KAPITEL) == (2)) {
            B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_HOWSLIFE_CH2");
        } else if ((KAPITEL) == (3)) {
            if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
                AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_HOWSLIFE_CH3_WHITEDAY");
            } else {
                B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_HOWSLIFE_CH3");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((KAPITEL) == (4)) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_HOWSLIFE_CH4");
        } else if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SEWERS_FEMALE_HOWSLIFE_CH5");
        };
    };
    if ((KAPITEL) == (2)) {
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_HOWSLIFE_CH2");
    };
    if ((KAPITEL) == (3)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
            AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_HOWSLIFE_CH3_WHITEDAY");
        } else {
            B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_HOWSLIFE_CH3");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (4)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_HOWSLIFE_CH4");
    };
    if ((KAPITEL) == (5)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SEWERS_MALE_HOWSLIFE_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_SEWERS(var C_NPC SLF) {
    DIA_AMB_CITY_SEWERS_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SEWERS_WHYHERE.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SEWERS_ABOUTSEWERS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SEWERS_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}

