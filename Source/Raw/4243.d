instance DIA_PABLO_SEWERS_EXIT(C_INFO) {
    NPC = 0xe65f;
    NR = 999;
    CONDITION = DIA_PABLO_SEWERS_EXIT_CONDITION;
    INFORMATION = DIA_PABLO_SEWERS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PABLO_SEWERS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PABLO_SEWERS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PABLO_SEWERS_QA401_LETSGO(C_INFO) {
    NPC = 0xe65f;
    NR = 1;
    CONDITION = DIA_PABLO_SEWERS_QA401_LETSGO_CONDITION;
    INFORMATION = DIA_PABLO_SEWERS_QA401_LETSGO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PABLO_SEWERS_QA401_LETSGO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PABLO_SEWERS_QA401_LETSGO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_LetsGo_03_01");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "QA401_GUIDE_01");
}

instance DIA_PABLO_SEWERS_QA401_OVER(C_INFO) {
    NPC = 0xe65f;
    NR = 1;
    CONDITION = DIA_PABLO_SEWERS_QA401_OVER_CONDITION;
    INFORMATION = DIA_PABLO_SEWERS_QA401_OVER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PABLO_SEWERS_QA401_OVER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_FIGHTWITHBANDITS_SEWERS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PABLO_SEWERS_QA401_OVER_INFO() {
    QA401_PABLOTASKDONE = TRUE;
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_Over_03_01");
    INFO_CLEARCHOICES(0x151b1);
    INFO_ADDCHOICE(0x151b1, "Now what?", 0x151b4);
}

func void DIA_PABLO_SEWERS_QA401_OVER_NOW() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Pablo_Sewers_QA401_Over_Now_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_Over_Now_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_Over_Now_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_Over_Now_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Pablo_Sewers_QA401_Over_Now_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_PABLOHELPED);
    INFO_CLEARCHOICES(0x151b1);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf5b6);
}
