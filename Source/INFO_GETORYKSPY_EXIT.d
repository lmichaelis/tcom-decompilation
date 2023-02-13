instance INFO_GETORYKSPY_EXIT(C_INFO) {
    NR = 999;
    CONDITION = INFO_GETORYKSPY_EXIT_CONDITION;
    INFORMATION = INFO_GETORYKSPY_EXIT_INFO;
    PERMANENT = 1;
    DESCRIPTION = DIALOG_ENDE;
}

func int INFO_GETORYKSPY_EXIT_CONDITION() {
    return TRUE;
}

func void INFO_GETORYKSPY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance INFO_GETORYKSPY_DIE(C_INFO) {
    NR = 3;
    CONDITION = INFO_GETORYKSPY_DIE_CONDITION;
    INFORMATION = INFO_GETORYKSPY_DIE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int INFO_GETORYKSPY_DIE_CONDITION() {
    return TRUE;
}

func void INFO_GETORYKSPY_DIE_INFO() {
    SELF.FLAGS = 0;
    SELF.AIVAR[52] = TRUE;
    if ((GETORYKSPY_DIALOGE) == (0)) {
        if ((SELF.VOICE) == (59)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_Die_05_00");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_Die_05_01");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_Die_05_02");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V2_Die_05_00");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V2_Die_05_01");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V2_Die_05_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V3_Die_05_00");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V3_Die_05_01");
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V3_Die_05_02");
        };
        GETORYKSPY_DIALOGE = (GETORYKSPY_DIALOGE) + (1);
    };
    if ((GETORYKSPY_DIALOGE) == (1)) {
        if ((SELF.VOICE) == (59)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_Die_05_03");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V2_Die_05_03");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V3_Die_05_03");
        };
        GETORYKSPY_DIALOGE = (GETORYKSPY_DIALOGE) + (1);
    };
    if ((SELF.VOICE) == (59)) {
        AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_Die_05_04");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V2_Die_05_04");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_GetorykSpy_V3_Die_05_04");
    };
    GETORYKSPY_DIALOGE = (GETORYKSPY_DIALOGE) + (1);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void B_ASSIGNAMBIENTINFOS_GETORYKSPY(var C_NPC SLF) {
    INFO_GETORYKSPY_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    INFO_GETORYKSPY_DIE.NPC = HLP_GETINSTANCEID(SLF);
}

