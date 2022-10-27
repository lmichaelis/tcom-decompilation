instance DIA_AMB_MINER_ARX_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_MINER_ARX_EXIT_CONDITION;
    INFORMATION = DIA_AMB_MINER_ARX_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_MINER_ARX_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINER_ARX_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_MINER_ARX_ABOUT(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_MINER_ARX_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_MINER_ARX_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about mine?";
}

func int DIA_AMB_MINER_ARX_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINER_ARX_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutMine");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_ABOUTMINE_V1");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_ABOUTMINE_V2");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_ABOUTMINE_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_MINER_ARX_HOWWORK(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_MINER_ARX_HOWWORK_CONDITION;
    INFORMATION = DIA_AMB_MINER_ARX_HOWWORK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_AMB_MINER_ARX_HOWWORK_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINER_ARX_HOWWORK_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutWork");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSWORK_POSTQA306_V1");
        } else {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSWORK_V1");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$GREETINGS_FromFriend");
            B_SAY(SELF, OTHER, "$SQ416_GOODJOB_02");
        } else {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSWORK_V2");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
            B_SAY(SELF, OTHER, "$IMBUSY_CALM");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
        };
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_MINER_ARX_WHATSSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_MINER_ARX_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_MINER_ARX_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_MINER_ARX_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINER_ARX_WHATSSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS)) {
        if ((KAPITEL) <= (3)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_POSTQA306_CH3");
        } else if ((KAPITEL) == (4)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_POSTQA306_CH4");
        } else if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_POSTQA306_CH5");
        };
    };
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_V1");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_V2");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_ARXMINERS_HOWSTHINGS_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_MINER_ARX(var C_NPC SLF) {
    DIA_AMB_MINER_ARX_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINER_ARX_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINER_ARX_HOWWORK.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINER_ARX_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}
