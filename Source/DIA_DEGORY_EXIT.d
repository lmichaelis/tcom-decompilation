instance DIA_DEGORY_EXIT(C_INFO) {
    NPC = 59004;
    NR = 999;
    CONDITION = DIA_DEGORY_EXIT_CONDITION;
    INFORMATION = DIA_DEGORY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DEGORY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DEGORY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DEGORY_HELLO(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_HELLO_CONDITION;
    INFORMATION = DIA_DEGORY_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_DEGORY_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_DEGORY_HELLO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_HELLO_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_HELLO_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_HELLO_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_HELLO_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_HELLO_03_05");
    AI_RESETFACEANI(SELF);
}

instance DIA_DEGORY_HOW(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_HOW_CONDITION;
    INFORMATION = DIA_DEGORY_HOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How can you live under such conditions?";
}

func int DIA_DEGORY_HOW_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 86487)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_HOW_INFO() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_How_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_How_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_How_03_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_DEGORY_WHY(C_INFO) {
    NPC = 59004;
    NR = 2;
    CONDITION = DIA_DEGORY_WHY_CONDITION;
    INFORMATION = DIA_DEGORY_WHY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why don't you look for some job?";
}

func int DIA_DEGORY_WHY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 86487)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_WHY_INFO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_Why_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_Why_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_Why_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_Why_03_04");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_DEGORY_KQ405_SEARCH(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_KQ405_SEARCH_CONDITION;
    INFORMATION = DIA_DEGORY_KQ405_SEARCH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for a royal scout.";
}

func int DIA_DEGORY_KQ405_SEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && ((KQ405_READNOTE) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_KQ405_SEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_Search_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_Search_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_Search_03_03");
}

instance DIA_DEGORY_KQ405_CANYOUGUIDE(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_KQ405_CANYOUGUIDE_CONDITION;
    INFORMATION = DIA_DEGORY_KQ405_CANYOUGUIDE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will you take me to him?";
}

func int DIA_DEGORY_KQ405_CANYOUGUIDE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86496))) && ((KQ405_FOUNDBODY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_CHOICES() {
    INFO_CLEARCHOICES(86499);
    INFO_ADDCHOICE(86499, "I'll look for him myself.", 86508);
    INFO_ADDCHOICE(86499, "I have some food with me.", 86509);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (KQ405_DEGORY_COST_V3)) {
        INFO_ADDCHOICE(86499, DIALOG_GIVE200G, 86507);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (KQ405_DEGORY_COST_V2)) {
        INFO_ADDCHOICE(86499, DIALOG_GIVE50G, 86506);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (KQ405_DEGORY_COST_V1)) {
        INFO_ADDCHOICE(86499, DIALOG_GIVE25G, 86505);
    };
}

var int DEGORY_KQ405_GUIDEUS;
func void DIA_DEGORY_KQ405_CANYOUGUIDE_GUIDEUS() {
    DEGORY_KQ405_GUIDEUS = 1;
    INFO_CLEARCHOICES(86499);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "KQ405_GUIDE");
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_SEWERSGUIDE_V1);
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_CanYouGuide_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_CanYouGuide_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_03_04");
    DIA_DEGORY_KQ405_CANYOUGUIDE_CHOICES();
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_25() {
    B_GIVEINVITEMS(OTHER, SELF, 34203, KQ405_DEGORY_COST_V1);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_25_03_01");
    B_GIVEINVITEMS(SELF, OTHER, 34203, KQ405_DEGORY_COST_V1);
    AI_RESETFACEANI(SELF);
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_50() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_50_03_01");
    NPC_REMOVEINVITEMS(SELF, 34203, KQ405_DEGORY_COST_V2);
    DIA_DEGORY_KQ405_CANYOUGUIDE_GUIDEUS();
    B_GIVEINVITEMS(OTHER, SELF, 34203, KQ405_DEGORY_COST_V2);
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_200() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_PLAYANI(SELF, T_JUMPB);
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_200_03_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_200_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_CanYouGuide_200_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_200_03_04");
    NPC_REMOVEINVITEMS(SELF, 34203, KQ405_DEGORY_COST_V3);
    DIA_DEGORY_KQ405_CANYOUGUIDE_GUIDEUS();
    B_GIVEINVITEMS(OTHER, SELF, 34203, KQ405_DEGORY_COST_V3);
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_CanYouGuide_Leave_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_Leave_03_02");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(86499);
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_SEWERSGUIDE_V2);
}

func void DIA_DEGORY_KQ405_CANYOUGUIDE_FOOD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_CanYouGuide_Food_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_CanYouGuide_Food_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_DEGORY_KQ405_NEARBODY(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_KQ405_NEARBODY_CONDITION;
    INFORMATION = DIA_DEGORY_KQ405_NEARBODY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DEGORY_KQ405_NEARBODY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "S2_KQ405_DEGORY_GUIDE")) <= (500))) && ((DEGORY_KQ405_GUIDEUS) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_KQ405_NEARBODY_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_NearBody_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_NearBody_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_NearBody_03_03");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "KQ405_WAIT");
}

instance DIA_DEGORY_KQ405_ITSHIM(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_KQ405_ITSHIM_CONDITION;
    INFORMATION = DIA_DEGORY_KQ405_ITSHIM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "This is the one, but his body was looted long ago.";
}

func int DIA_DEGORY_KQ405_ITSHIM_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && ((DEGORY_KQ405_GUIDEUS) == (1))) && ((KQ405_FOUNDBODY) == (TRUE))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_KQ405_FOUNDBODY_NEXT() {
    KQ405_FOUNDBODY = 2;
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_ItsHim_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_ItsHim_15_03");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_ItsHim_03_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_ItsHim_15_05");
    AI_RESETFACEANI(SELF);
    if ((DEGORY_KQ405_GUIDEUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_ItsHim_03_06");
        AI_STOPPROCESSINFOS(SELF);
        SELF.AIVAR[15] = FALSE;
        NPC_EXCHANGEROUTINE(SELF, START);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_ItsHim_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_ItsHim_03_08");
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_DEGORY_FOUNDBODYTOGETHER);
}

func void DIA_DEGORY_KQ405_ITSHIM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_ItsHim_15_01");
    DIA_DEGORY_KQ405_FOUNDBODY_NEXT();
}

instance DIA_DEGORY_KQ405_FOUNDBODY(C_INFO) {
    NPC = 59004;
    NR = 1;
    CONDITION = DIA_DEGORY_KQ405_FOUNDBODY_CONDITION;
    INFORMATION = DIA_DEGORY_KQ405_FOUNDBODY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DEGORY_KQ405_FOUNDBODY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && ((DEGORY_KQ405_GUIDEUS) == (0))) && ((KQ405_FOUNDBODY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_KQ405_FOUNDBODY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Degory_KQ405_FoundBody_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Degory_KQ405_FoundBody_15_02");
    DIA_DEGORY_KQ405_FOUNDBODY_NEXT();
}

instance DIA_DEGORY_PICKPOCKET(C_INFO) {
    NPC = 59004;
    NR = 900;
    CONDITION = DIA_DEGORY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DEGORY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_DEGORY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DEGORY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(86520);
    INFO_ADDCHOICE(86520, DIALOG_BACK, 86524);
    INFO_ADDCHOICE(86520, DIALOG_PICKPOCKET, 86523);
}

func void DIA_DEGORY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(86520);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(86520);
}

func void DIA_DEGORY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(86520);
}

