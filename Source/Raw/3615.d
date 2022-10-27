instance DIA_ANA_Q101_GETLOST(C_INFO) {
    NPC = 0xc973;
    NR = 1;
    CONDITION = DIA_ANA_Q101_GETLOST_CONDITION;
    INFORMATION = DIA_ANA_Q101_GETLOST_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ANA_Q101_GETLOST_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q101_GETLOST_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_03");
    };
    if ((Q101_ANALEAFIRSTTALK) == (FALSE)) {
        AI_LOGENTRY(TOPIC_Q101, LOG_Q101_LEAANA_GETLOST);
        Q101_ANALEAFIRSTTALK = TRUE;
    };
}

