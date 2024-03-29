instance DIA_THIEF02_EXIT(C_INFO) {
    NPC = 52377;
    NR = 999;
    CONDITION = DIA_THIEF02_EXIT_CONDITION;
    INFORMATION = DIA_THIEF02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THIEF02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THIEF02_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THIEF02_QM301_MISTAKE(C_INFO) {
    NPC = 52377;
    NR = 1;
    CONDITION = DIA_THIEF02_QM301_MISTAKE_CONDITION;
    INFORMATION = DIA_THIEF02_QM301_MISTAKE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THIEF02_QM301_MISTAKE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && ((QM301_CHASETHIEF_END) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THIEF02_QM301_MISTAKE_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_THIEF02_QM301_Mistake_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 61422);
}

