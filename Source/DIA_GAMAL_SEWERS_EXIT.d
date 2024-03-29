instance DIA_GAMAL_SEWERS_EXIT(C_INFO) {
    NPC = 58994;
    NR = 999;
    CONDITION = DIA_GAMAL_SEWERS_EXIT_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GAMAL_SEWERS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GAMAL_SEWERS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GAMAL_SEWERS_QM305_LETSGO(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_LETSGO_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_LETSGO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_LETSGO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_QM305_LETSGO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_LetsGo_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_01");
    SELF.AIVAR[15] = TRUE;
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GAMAL_SEWERS_QM305_SPOT_01(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_SPOT_01_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_SPOT_01_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_SPOT_01_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86456))) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_01")) <= (800))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void GAMAL_QM305_USEFAKESCROLL() {
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    B_USEFAKESCROLL();
    AI_RESETFACEANI(SELF);
}

func void DIA_GAMAL_SEWERS_QM305_SPOT_01_INFO() {
    GAMAL_QM305_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_01_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_02");
}

instance DIA_GAMAL_SEWERS_QM305_SPOT_02(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_SPOT_02_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_SPOT_02_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_SPOT_02_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86459))) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_02")) <= (800))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_QM305_SPOT_02_INFO() {
    GAMAL_QM305_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_02_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_03");
    if ((QM305_ISGATEOPEND) == (FALSE)) {
        QM305_GAMALOPENGATE = 1;
    };
}

instance DIA_GAMAL_SEWERS_QM305_SPOT_03(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_SPOT_03_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_SPOT_03_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_SPOT_03_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86463))) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_03")) <= (800))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_QM305_SPOT_03_INFO() {
    GAMAL_QM305_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_03_03_01");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_CORPSE");
}

instance DIA_GAMAL_SEWERS_QM305_SPOT_CORPSE(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_SPOT_CORPSE_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_SPOT_CORPSE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_SPOT_CORPSE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86466))) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_04")) <= (800))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_QM305_SPOT_CORPSE_INFO() {
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_Corpse_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gamal_Sewers_QM305_Spot_Corpse_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_Corpse_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_FINISH");
}

instance DIA_GAMAL_SEWERS_DIRTYTHIEF(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_DIRTYTHIEF_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_DIRTYTHIEF_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_DIRTYTHIEF_CONDITION() {
    if ((QM305_CHECKTHIEF) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_DIRTYTHIEF_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_DirtyThief_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_DirtyThief_03_02");
    INFO_CLEARCHOICES(86472);
    INFO_ADDCHOICE(86472, "He will no longer need these things.", 86477);
    INFO_ADDCHOICE(86472, "Excuse me.", 86476);
}

func void DIA_GAMAL_SEWERS_DIRTYTHIEF_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_DirtyThief_Dead_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(86472);
    if ((NPC_KNOWSINFO(OTHER, 86478)) == (FALSE)) {
        NPC_EXCHANGEROUTINE(SELF, "QM305_GUIDE_FINISH");
    };
    NPC_EXCHANGEROUTINE(SELF, "QM305_WAIT");
}

func void DIA_GAMAL_SEWERS_DIRTYTHIEF_SORRY() {
    AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gamal_Sewers_DirtyThief_Sorry_15_01");
    DIA_GAMAL_SEWERS_DIRTYTHIEF_NEXT();
}

func void DIA_GAMAL_SEWERS_DIRTYTHIEF_DEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gamal_Sewers_DirtyThief_Dead_15_01");
    DIA_GAMAL_SEWERS_DIRTYTHIEF_NEXT();
}

instance DIA_GAMAL_SEWERS_QM305_SPOT_FINISH(C_INFO) {
    NPC = 58994;
    NR = 1;
    CONDITION = DIA_GAMAL_SEWERS_QM305_SPOT_FINISH_CONDITION;
    INFORMATION = DIA_GAMAL_SEWERS_QM305_SPOT_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_SEWERS_QM305_SPOT_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86469))) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_QM305_GAMAL_FINISH")) <= (800))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_SEWERS_QM305_SPOT_FINISH_INFO() {
    QM305_GAMALINSEWERS = 3;
    GAMAL_QM305_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_Sewers_QM305_Spot_Finish_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM305_WAIT");
}

instance DIA_GAMAL_NOTNOW(C_INFO) {
    NPC = 58994;
    NR = 998;
    CONDITION = DIA_GAMAL_NOTNOW_CONDITION;
    INFORMATION = DIA_GAMAL_NOTNOW_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_GAMAL_NOTNOW_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) {
        if ((NPC_KNOWSINFO(OTHER, 86456)) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_01")) <= (800))) {
            return FALSE;
        };
        if ((NPC_KNOWSINFO(OTHER, 86459)) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_02")) <= (800))) {
            return FALSE;
        };
        if ((NPC_KNOWSINFO(OTHER, 86463)) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_03")) <= (800))) {
            return FALSE;
        };
        if ((NPC_KNOWSINFO(OTHER, 86466)) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_GAMAL_SPOT_04")) <= (800))) {
            return FALSE;
        };
        if ((NPC_KNOWSINFO(OTHER, 86469)) && ((NPC_GETDISTTOWP(SELF, "S1_PATH_QM305_GAMAL_FINISH")) <= (800))) {
            return FALSE;
        };
        if ((QM305_CHECKTHIEF) == (TRUE)) {
            return FALSE;
        };
        if ((NPC_KNOWSINFO(OTHER, 86456)) && (NPC_ISINSTATE(SELF, 61599))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GAMAL_NOTNOW_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gamal_NotNow_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

