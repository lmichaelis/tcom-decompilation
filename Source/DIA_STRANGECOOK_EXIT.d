instance DIA_STRANGECOOK_EXIT(C_INFO) {
    NPC = 54784;
    NR = 999;
    CONDITION = DIA_STRANGECOOK_EXIT_CONDITION;
    INFORMATION = DIA_STRANGECOOK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_STRANGECOOK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_STRANGECOOK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_STRANGECOOK_NS59_FORYOU() {
    B_GIVEPLAYERXP(XP_EVENT_STRANGECOOK_NS59);
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_ForYou_03_01");
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

instance DIA_STRANGECOOK_NS59_TIMETOCHOOSE(C_INFO) {
    NPC = 54784;
    NR = 1;
    CONDITION = DIA_STRANGECOOK_NS59_TIMETOCHOOSE_CONDITION;
    INFORMATION = DIA_STRANGECOOK_NS59_TIMETOCHOOSE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_STRANGECOOK_NS59_TIMETOCHOOSE_CONDITION() {
    return TRUE;
}

func void DIA_STRANGECOOK_NS59_TIMETOCHOOSE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_TimeToChoose_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_StrangeCook_NS59_TimeToChoose_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_TimeToChoose_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_TimeToChoose_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_TimeToChoose_03_05");
    INFO_CLEARCHOICES(68447);
    INFO_ADDCHOICE(68447, "An old-fashioned stew.", 68450);
    INFO_ADDCHOICE(68447, "I'll try your soup.", 68451);
}

func void DIA_STRANGECOOK_NS59_REDSTEW() {
    AI_OUTPUT(OTHER, SELF, "DIA_StrangeCook_NS59_RedStew_15_01");
    CREATEINVITEMS(SELF, 36727, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36727, 1);
    DIA_STRANGECOOK_NS59_FORYOU();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_STRANGECOOK_NS59_BLUESTEW() {
    AI_OUTPUT(OTHER, SELF, "DIA_StrangeCook_NS59_BlueStew_15_01");
    CREATEINVITEMS(SELF, 36729, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36729, 1);
    DIA_STRANGECOOK_NS59_FORYOU();
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_STRANGECOOK_NS59_AFTER(C_INFO) {
    NPC = 54784;
    NR = 3;
    CONDITION = DIA_STRANGECOOK_NS59_AFTER_CONDITION;
    INFORMATION = DIA_STRANGECOOK_NS59_AFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_STRANGECOOK_NS59_AFTER_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 68447)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_STRANGECOOK_NS59_AFTER_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_StrangeCook_NS59_After_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

