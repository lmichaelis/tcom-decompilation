instance DIA_THUG_QM201_EXIT(C_INFO) {
    NPC = 0xd2cb;
    NR = 999;
    CONDITION = DIA_THUG_QM201_EXIT_CONDITION;
    INFORMATION = DIA_THUG_QM201_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THUG_QM201_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THUG_QM201_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THUG_QM201_FIGHT(C_INFO) {
    NPC = 0xd2cb;
    NR = 1;
    CONDITION = DIA_THUG_QM201_FIGHT_CONDITION;
    INFORMATION = DIA_THUG_QM201_FIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THUG_QM201_FIGHT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM201)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10404))) && ((NPC_GETDISTTOWP(SELF, "PARTM3_CHEMIST_GARDEN_11")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void THUG_QM201_ENABLEFIGHT() {
    QM201_FIGHTWITHLEADER = 1;
    NONE_13588_THUG.AIVAR[61] = FALSE;
    NONE_13588_THUG.FLAGS = 0;
}

func void DIA_THUG_QM201_FIGHT_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Thug_QM201_Fight_03_01");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Thug_QM201_Fight_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Thug_QM201_Fight_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
    AI_FUNCTION(SELF, 0x10ad4);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

