instance DIA_AMB_RITA_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_RITA_EXIT_CONDITION;
    INFORMATION = DIA_AMB_RITA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_RITA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_RITA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_RITA_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_RITA_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_RITA_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "Tell me about Rita.";
}

func int DIA_AMB_RITA_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_RITA_ABOUT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_OpinionAboutGaspar");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_ABOUTRITA_V1_01");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_ABOUTRITA_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_ABOUTRITA_V2_01");
    };
    if ((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_ABOUTRITA_V1_01");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_ABOUTRITA_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_ABOUTRITA_V2_02");
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_ABOUTRITA_V2_01");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_RITA_LEADER(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_RITA_LEADER_CONDITION;
    INFORMATION = DIA_AMB_RITA_LEADER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about this area?";
}

func int DIA_AMB_RITA_LEADER_CONDITION() {
    return TRUE;
}

func void DIA_AMB_RITA_LEADER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutThisPlace");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_NEIGHBORHOOD_V1_01");
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_NEIGHBORHOOD_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_NEIGHBORHOOD_V2");
    };
    if ((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_NEIGHBORHOOD_V1_01");
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_NEIGHBORHOOD_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_NEIGHBORHOOD_V2");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_RITA_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_RITA_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_RITA_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What's new?";
}

func int DIA_AMB_RITA_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_RITA_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew");
    if ((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (34))) {
        if (((KAPITEL) == (1)) && ((KAPITEL) == (2))) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_WHATSNEW_CH1AND2_V1");
        } else {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_FEMALE_WHATSNEW_CH3TO5_V1");
        } else {
            /* set_instance(0) */;
        };
    };
    if (((KAPITEL) == (1)) && ((KAPITEL) == (2))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_WHATSNEW_CH1AND2");
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$AMB_RITASVINEYARD_MALE_WHATSNEW_CH3TO5");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_RITA(var C_NPC SLF) {
    DIA_AMB_RITA_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_RITA_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_RITA_LEADER.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_RITA_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}

