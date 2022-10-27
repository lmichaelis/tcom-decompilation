instance DIA_COURIER_EXIT(C_INFO) {
    NPC = 0xd99a;
    NR = 999;
    CONDITION = DIA_COURIER_EXIT_CONDITION;
    INFORMATION = DIA_COURIER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_COURIER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_COURIER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_COURIER_NS62_START(C_INFO) {
    NPC = 0xd99a;
    NR = 1;
    CONDITION = DIA_COURIER_NS62_START_CONDITION;
    INFORMATION = DIA_COURIER_NS62_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_COURIER_NS62_START_CONDITION() {
    return TRUE;
}

func void DIA_COURIER_NS62_START_INFO() {
    NONE_13796_COURIER.FLAGS = 0;
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Start_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Courier_NS62_Start_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Start_03_04");
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Start_03_05");
    INFO_ADDCHOICE(0x131f8, "Yeah, I'm Barvin.", 0x131fb);
    INFO_ADDCHOICE(0x131f8, "No, you have me confused with someone.", 0x131fc);
}

func void DIA_COURIER_NS62_BARVIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Courier_NS62_Barvin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Barvin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Barvin_03_03");
    CREATEINVITEMS(SELF, 0x9541, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9541, 1);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_COURIER_NS62_MISTAKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Courier_NS62_Mistake_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Courier_NS62_Mistake_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_Mistake_03_03");
    B_GIVEPLAYERXP(XP_EVENT_COURIER);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_COURIER_NS62_NOTIME(C_INFO) {
    NPC = 0xd99a;
    NR = 4;
    CONDITION = DIA_COURIER_NS62_NOTIME_CONDITION;
    INFORMATION = DIA_COURIER_NS62_NOTIME_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_COURIER_NS62_NOTIME_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x131f8)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_COURIER_NS62_NOTIME_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Courier_NS62_NoTime_03_01");
    AI_STOPPROCESSINFOS(SELF);
}
