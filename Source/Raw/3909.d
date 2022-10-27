instance DIA_MYSTERIOUSMAN_EXIT(C_INFO) {
    NPC = 0xd72d;
    NR = 999;
    CONDITION = DIA_MYSTERIOUSMAN_EXIT_CONDITION;
    INFORMATION = DIA_MYSTERIOUSMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MYSTERIOUSMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MYSTERIOUSMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MYSTERIOUSMAN_HELLO(C_INFO) {
    NPC = 0xd72d;
    NR = 1;
    CONDITION = DIA_MYSTERIOUSMAN_HELLO_CONDITION;
    INFORMATION = DIA_MYSTERIOUSMAN_HELLO_INFO;
    IMPORTANT = TRUE;
}

func int DIA_MYSTERIOUSMAN_HELLO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x103ca)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MYSTERIOUSMAN_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_14_01");
    INFO_CLEARCHOICES(0x124d1);
    INFO_ADDCHOICE(0x124d1, "Marvin.", 0x124d5);
    INFO_ADDCHOICE(0x124d1, "And with whom do I have the pleasure?", 0x124d6);
}

func void DIA_MYSTERIOUSMAN_HELLO_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_14_06");
    INFO_CLEARCHOICES(0x124d1);
    INFO_ADDCHOICE(0x124d1, "Okay, I'll pass it on.", 0x124d9);
    INFO_ADDCHOICE(0x124d1, "Why don't you do it yourself?", 0x124d8);
}

func void DIA_MYSTERIOUSMAN_HELLO_MYNAMEISMARVIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_MyNameIsMarvin_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_MyNameIsMarvin_14_01");
    DIA_MYSTERIOUSMAN_HELLO_NEXT();
}

func void DIA_MYSTERIOUSMAN_HELLO_WHOAREYOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_WhoAreYou_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_WhoAreYou_14_01");
    DIA_MYSTERIOUSMAN_HELLO_NEXT();
}

func void DIA_MYSTERIOUSMAN_HELLO_END() {
    AI_LOGENTRY(TOPIC_FMQ003, LOG_FMQ003_MYSTERIOUSMAN_INFO);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_MYSTERIOUSMAN_HELLO_NEXT_WHYNOTYOU() {
    INFO_CLEARCHOICES(0x124d1);
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_WhyNotYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_WhyNotYou_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_WhyNotYou_14_03");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_WhyNotYou_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_WhyNotYou_14_05");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_WhyNotYou_15_06");
    DIA_MYSTERIOUSMAN_HELLO_END();
}

func void DIA_MYSTERIOUSMAN_HELLO_NEXT_OK() {
    INFO_CLEARCHOICES(0x124d1);
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_OK_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_OK_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_OK_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_OK_14_04");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_Hello_Next_OK_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_Hello_Next_OK_14_06");
    DIA_MYSTERIOUSMAN_HELLO_END();
}

instance DIA_MYSTERIOUSMAN_QM201_WEIGAR(C_INFO) {
    NPC = 0xd72d;
    NR = 1;
    CONDITION = DIA_MYSTERIOUSMAN_QM201_WEIGAR_CONDITION;
    INFORMATION = DIA_MYSTERIOUSMAN_QM201_WEIGAR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Weigar sent me.";
}

func int DIA_MYSTERIOUSMAN_QM201_WEIGAR_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM201)) == (LOG_RUNNING)) && (WLD_ISTIME(18, 0, 2, 30))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MYSTERIOUSMAN_QM201_WEIGAR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_15_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_03_04");
    INFO_CLEARCHOICES(0x124da);
    INFO_ADDCHOICE(0x124da, "Why?", 0x124de);
    INFO_ADDCHOICE(0x124da, "Otherwise, there's no exchange.", 0x124df);
}

func void DIA_MYSTERIOUSMAN_QM201_WEIGAR_NEXT() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_Next_03_02");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_Next_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_Next_03_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_Next_15_05");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_Next_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_Next_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_MysteriousMan_QM201_Weigar_Next_03_08");
    AI_LOGENTRY(TOPIC_QM201, LOG_QM201_MYSTERIOUS_PLAN);
    INFO_CLEARCHOICES(0x124da);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_MYSTERIOUSMAN_QM201_WEIGAR_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_Why_15_01");
    DIA_MYSTERIOUSMAN_QM201_WEIGAR_NEXT();
}

func void DIA_MYSTERIOUSMAN_QM201_WEIGAR_ONLYWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_MysteriousMan_QM201_Weigar_OnlyWay_15_01");
    DIA_MYSTERIOUSMAN_QM201_WEIGAR_NEXT();
}

