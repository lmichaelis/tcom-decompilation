instance DIA_REFUGEE_QM304_03_EXIT(C_INFO) {
    NPC = 53978;
    NR = 999;
    CONDITION = DIA_REFUGEE_QM304_03_EXIT_CONDITION;
    INFORMATION = DIA_REFUGEE_QM304_03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_REFUGEE_QM304_03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_REFUGEE_QM304_03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_REFUGEE_QM304_03_FIGHT(C_INFO) {
    NPC = 53978;
    NR = 1;
    CONDITION = DIA_REFUGEE_QM304_03_FIGHT_CONDITION;
    INFORMATION = DIA_REFUGEE_QM304_03_FIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_REFUGEE_QM304_03_FIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFUGEE_QM304_03_FIGHT_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refugee_QM304_03_Fight_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 63530);
}

