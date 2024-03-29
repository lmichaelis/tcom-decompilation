instance DIA_TOHAR_EXIT(C_INFO) {
    NPC = 53390;
    NR = 999;
    CONDITION = DIA_TOHAR_EXIT_CONDITION;
    INFORMATION = DIA_TOHAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_TOHAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_TOHAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TOHAR_QM202_JOB(C_INFO) {
    NPC = 53390;
    NR = 1;
    CONDITION = DIA_TOHAR_QM202_JOB_CONDITION;
    INFORMATION = DIA_TOHAR_QM202_JOB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How was work?";
}

func int DIA_TOHAR_QM202_JOB_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66704))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOHAR_QM202_JOB_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Job_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Job_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Job_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Job_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Job_15_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Job_03_06");
}

instance DIA_TOHAR_QM202_HELP(C_INFO) {
    NPC = 53390;
    NR = 1;
    CONDITION = DIA_TOHAR_QM202_HELP_CONDITION;
    INFORMATION = DIA_TOHAR_QM202_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Wouldn't you like to ease your parents' burden?";
}

func int DIA_TOHAR_QM202_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 72923))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOHAR_QM202_HELP_INFO() {
    QM202_RECRUITSCOUNTDIALOGUE = (QM202_RECRUITSCOUNTDIALOGUE) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Help_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Help_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Help_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Tohar_QM202_Help_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_QM202_Help_03_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QM202, LOG_QM202_TOHAR_DIALOGUE);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

instance DIA_TOHAR_YOUSURE(C_INFO) {
    NPC = 53390;
    NR = 1;
    CONDITION = DIA_TOHAR_YOUSURE_CONDITION;
    INFORMATION = DIA_TOHAR_YOUSURE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you sure?";
}

func int DIA_TOHAR_YOUSURE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72926)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOHAR_YOUSURE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_AreYouSure");
    AI_OUTPUT(SELF, OTHER, "DIA_Tohar_YouSure_09_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TOHAR_PICKPOCKET(C_INFO) {
    NPC = 53390;
    NR = 900;
    CONDITION = DIA_TOHAR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_TOHAR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_TOHAR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOHAR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(72932);
    INFO_ADDCHOICE(72932, DIALOG_BACK, 72936);
    INFO_ADDCHOICE(72932, DIALOG_PICKPOCKET, 72935);
}

func void DIA_TOHAR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(72932);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(72932);
}

func void DIA_TOHAR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(72932);
}

