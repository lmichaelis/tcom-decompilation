instance DIA_BRAD_EXIT(C_INFO) {
    NPC = 55798;
    NR = 999;
    CONDITION = DIA_BRAD_EXIT_CONDITION;
    INFORMATION = DIA_BRAD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BRAD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BRAD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BRAD_OHSHIT(C_INFO) {
    NPC = 55798;
    NR = 1;
    CONDITION = DIA_BRAD_OHSHIT_CONDITION;
    INFORMATION = DIA_BRAD_OHSHIT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BRAD_OHSHIT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((SELF.AIVAR[5]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRAD_OHSHIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Brad_OhShit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Brad_OhShit_07_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Brad_OhShit_07_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Brad_OhShit_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Brad_OhShit_07_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Brad_OhShit_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Brad_OhShit_07_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Brad_OhShit_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Brad_OhShit_07_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Brad_OhShit_15_10");
    AI_STOPPROCESSINFOS(SELF);
    INFO_CLEARCHOICES(77580);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

