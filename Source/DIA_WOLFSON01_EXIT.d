instance DIA_WOLFSON01_EXIT(C_INFO) {
    NPC = 56026;
    NR = 999;
    CONDITION = DIA_WOLFSON01_EXIT_CONDITION;
    INFORMATION = DIA_WOLFSON01_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WOLFSON01_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WOLFSON01_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOLFSON01_Q515_JON(C_INFO) {
    NPC = 56026;
    NR = 1;
    CONDITION = DIA_WOLFSON01_Q515_JON_CONDITION;
    INFORMATION = DIA_WOLFSON01_Q515_JON_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSON01_Q515_JON_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q515)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 82586))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSON01_Q515_JON_INFO() {
    AI_FUNCTION(SELF, 78138);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon01_Q515_Jon_03_01");
    INFO_CLEARCHOICES(78135);
    INFO_ADDCHOICE(78135, "You must have me confused with someone.", 78141);
    INFO_ADDCHOICE(78135, "Yeah, so what?", 78140);
}

func void WOLFSON_PART5_TURNTONPC() {
    AI_WAIT(DJG_10133_WOLFSON_Q515, 1045220557);
    AI_TURNTONPC(DJG_10133_WOLFSON_Q515, HERO);
    AI_WAIT(DJG_10134_WOLFSON_Q515, 1053609165);
    AI_TURNTONPC(DJG_10134_WOLFSON_Q515, HERO);
    AI_WAIT(DJG_10135_WOLFSON_Q515, 1056964608);
    AI_TURNTONPC(DJG_10135_WOLFSON_Q515, HERO);
    AI_WAIT(DJG_10136_WOLFSON_Q515, 1063675494);
    AI_TURNTONPC(DJG_10136_WOLFSON_Q515, HERO);
    AI_WAIT(DJG_10137_WOLFSON_Q515, 1060320051);
    AI_TURNTONPC(DJG_10137_WOLFSON_Q515, HERO);
    AI_WAIT(DJG_10138_WOLFSON_Q515, 1067030938);
    AI_TURNTONPC(DJG_10138_WOLFSON_Q515, HERO);
}

func void DIA_WOLFSON01_Q515_JON_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon01_Q515_Jon_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon01_Q515_Jon_Next_03_02");
    INFO_CLEARCHOICES(78135);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 78142);
}

func void DIA_WOLFSON01_Q515_JON_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon01_Q515_Jon_Yes_15_01");
    DIA_WOLFSON01_Q515_JON_NEXT();
}

func void DIA_WOLFSON01_Q515_JON_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon01_Q515_Jon_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon01_Q515_Jon_No_03_02");
    DIA_WOLFSON01_Q515_JON_NEXT();
}

func void WOLFSON01_STARTCUTSCENE() {
    Q515_ESCAPEMARVIN = 1;
}
