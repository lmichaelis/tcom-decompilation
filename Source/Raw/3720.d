instance DIA_REFUGEE_QM304_04_EXIT(C_INFO) {
    NPC = 0xd7e9;
    NR = 999;
    CONDITION = DIA_REFUGEE_QM304_04_EXIT_CONDITION;
    INFORMATION = DIA_REFUGEE_QM304_04_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_REFUGEE_QM304_04_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_REFUGEE_QM304_04_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_REFUGEE_QM304_04_FLEE(C_INFO) {
    NPC = 0xd7e9;
    NR = 1;
    CONDITION = DIA_REFUGEE_QM304_04_FLEE_CONDITION;
    INFORMATION = DIA_REFUGEE_QM304_04_FLEE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_REFUGEE_QM304_04_FLEE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFUGEE_QM304_04_FLEE_INFO() {
    QM304_REFUGEEFLEE_STATUS = 1;
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refugee_QM304_04_Flee_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM304_FLEE");
}

instance DIA_REFUGEE_QM304_04_WHY(C_INFO) {
    NPC = 0xd7e9;
    NR = 1;
    CONDITION = DIA_REFUGEE_QM304_04_WHY_CONDITION;
    INFORMATION = DIA_REFUGEE_QM304_04_WHY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_REFUGEE_QM304_04_WHY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((QM304_REFUGEEFLEE_STATUS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFUGEE_QM304_04_WHY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refugee_QM304_04_Why_15_01");
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
    AI_OUTPUT(SELF, OTHER, "DIA_Refugee_QM304_04_Why_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Refugee_QM304_04_Why_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Refugee_QM304_04_Why_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Refugee_QM304_04_Why_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Refugee_QM304_04_Why_03_06");
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    CREATEINVITEMS(SELF, 0x859a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x859a, 1);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    QM304_COUNTHOWMANYNUGGETS();
    QM304_COUNTHOWMANYEVENTS();
    AI_LOGENTRY(TOPIC_QM304, LOG_QM304_REFUGEE_NUGGET_02);
}

