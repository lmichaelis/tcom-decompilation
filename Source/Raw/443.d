instance DIA_AMB_MINE_SLD_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_MINE_SLD_EXIT_CONDITION;
    INFORMATION = DIA_AMB_MINE_SLD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_MINE_SLD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_SLD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_MINE_SLD_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_MINE_SLD_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_MINE_SLD_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about mine?";
}

func int DIA_AMB_MINE_SLD_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_SLD_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutMine");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMINE_V1_01");
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMINE_V1_02");
    };
    if ((SELF.VOICE) == (25)) {
        RNGANWSER = HLP_RANDOM(2);
        if ((RNGANWSER) == (0)) {
            B_SAY(SELF, OTHER, "$IMBUSY_CALM");
        } else if ((RNGANWSER) == (1)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
        };
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

var int DIA_AMB_MINE_SLD_ABOUT_INFO.RNGANWSER = 0;
instance DIA_AMB_MINE_SLD_ABOUTGUILD(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_MINE_SLD_ABOUTGUILD_CONDITION;
    INFORMATION = DIA_AMB_MINE_SLD_ABOUTGUILD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about the Guild's mercenaries?";
}

func int DIA_AMB_MINE_SLD_ABOUTGUILD_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_SLD_ABOUTGUILD_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutSLD");
    if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
        if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMERCS_POSTQA306_V1_01");
        } else if ((SELF.VOICE) == (25)) {
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMERCS_POSTQA306_V2_01");
        };
    };
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMERCS_V1_01");
    };
    if ((SELF.VOICE) == (25)) {
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_ABOUTMERCS_V2_01");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_MINE_SLD_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_MINE_SLD_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_MINE_SLD_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_MINE_SLD_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_SLD_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
        if ((KAPITEL) <= (3)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_POSTQA306_CH3_01");
        } else if ((KAPITEL) == (4)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_POSTQA306_CH4_01");
        } else if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_POSTQA306_CH5_01");
        };
    };
    if ((KAPITEL) <= (3)) {
        if ((SELF.VOICE) == (25)) {
            RNGANWSER = HLP_RANDOM(2);
            if ((RNGANWSER) == (0)) {
                B_SAY(SELF, OTHER, "$IMBUSY_CALM");
            } else if ((RNGANWSER) == (1)) {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
            };
        } else if ((SQ119_INSIDEMINE) == (2)) {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_V1_01");
        } else {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_V2_01");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((KAPITEL) == (4)) {
        if ((SQ119_INSIDEMINE) == (2)) {
            if ((SELF.VOICE) == (25)) {
                RNGANWSER2 = HLP_RANDOM(2);
                if ((RNGANWSER2) == (0)) {
                    B_SAY(SELF, OTHER, "$IMBUSY_CALM");
                } else if ((RNGANWSER2) == (1)) {
                    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                    B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
                };
            } else {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_V1_01");
            } else {
                /* set_instance(0) */;
            };
        };
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_POSTQA306_CH4_01");
    };
    if ((KAPITEL) == (5)) {
        if ((SQ119_INSIDEMINE) == (2)) {
            if ((SELF.VOICE) == (25)) {
                RNGANWSER3 = HLP_RANDOM(2);
                if ((RNGANWSER3) == (0)) {
                    B_SAY(SELF, OTHER, "$IMBUSY_CALM");
                } else if ((RNGANWSER3) == (1)) {
                    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                    B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
                };
            } else {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_V1_01");
            } else {
                /* set_instance(0) */;
            };
        };
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_MERC_ARX_MINE_HOWSTHINGS_POSTQA306_CH5_01");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

var int DIA_AMB_MINE_SLD_WHATSUP_INFO.RNGANWSER = 0;
var int DIA_AMB_MINE_SLD_WHATSUP_INFO.RNGANWSER2 = 0;
var int DIA_AMB_MINE_SLD_WHATSUP_INFO.RNGANWSER3 = 0;
func void B_ASSIGNAMBIENTINFOS_AMB_MINE_SLD(var C_NPC SLF) {
    DIA_AMB_MINE_SLD_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINE_SLD_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINE_SLD_ABOUTGUILD.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINE_SLD_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}

