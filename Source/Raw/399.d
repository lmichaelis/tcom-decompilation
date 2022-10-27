var int SALVISPY_DIALOGE = 0;
instance INFO_SALVISPY_EXIT(C_INFO) {
    NR = 999;
    CONDITION = INFO_SALVISPY_EXIT_CONDITION;
    INFORMATION = INFO_SALVISPY_EXIT_INFO;
    PERMANENT = 1;
    DESCRIPTION = DIALOG_ENDE;
}

func int INFO_SALVISPY_EXIT_CONDITION() {
    return TRUE;
}

func void INFO_SALVISPY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance INFO_SALVISPY_DIE(C_INFO) {
    NR = 3;
    CONDITION = INFO_SALVISPY_DIE_CONDITION;
    INFORMATION = INFO_SALVISPY_DIE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int INFO_SALVISPY_DIE_CONDITION() {
    return TRUE;
}

func void INFO_SALVISPY_DIE_INFO() {
    SELF.FLAGS = 0;
    SELF.AIVAR[52] = TRUE;
    if ((SALVISPY_DIALOGE) == (0)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_Die_05_00");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V2_Die_05_00");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V3_Die_05_00");
        };
        AI_OUTPUT(OTHER, SELF, "Info_SalviSpy_Die_15_01");
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_Die_05_02");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V2_Die_05_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V3_Die_05_02");
        };
        SALVISPY_DIALOGE = (SALVISPY_DIALOGE) + (1);
    };
    if ((SALVISPY_DIALOGE) == (1)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_Die_05_03");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V2_Die_05_03");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V3_Die_05_03");
        };
        SALVISPY_DIALOGE = (SALVISPY_DIALOGE) + (1);
    };
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_Die_05_04");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V2_Die_05_04");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SalviSpy_V3_Die_05_04");
    };
    SALVISPY_DIALOGE = (SALVISPY_DIALOGE) + (1);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void B_ASSIGNAMBIENTINFOS_SALVISPY(var C_NPC SLF) {
    INFO_SALVISPY_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SALVISPY_DIE.NPC = HLP_GETINSTANCEID(SLF);
}

