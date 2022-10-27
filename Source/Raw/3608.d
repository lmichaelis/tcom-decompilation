instance DIA_JORN_EXIT(C_INFO) {
    NPC = 0xc8ef;
    NR = 999;
    CONDITION = DIA_JORN_EXIT_CONDITION;
    INFORMATION = DIA_JORN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_JORN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_JORN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_JORN_Q101_HELLO(C_INFO) {
    NPC = 0xc8ef;
    NR = 1;
    CONDITION = DIA_JORN_Q101_HELLO_CONDITION;
    INFORMATION = DIA_JORN_Q101_HELLO_INFO;
    IMPORTANT = TRUE;
}

func int DIA_JORN_Q101_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_JORN_Q101_HELLO_INFO() {
    MUSIC_OVERRIDETRACK(0x5599);
    Q101_ENABLEEVERYONEPARTYMEMBER();
    HERO.AIVAR[95] = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_Hello_01_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_Hello_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_Hello_01_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_Hello_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_Hello_01_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_Hello_01_06");
    LOG_CREATETOPIC(TOPIC_Q101, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q101), TOPIC_Q101, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_FIRST);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Ship01");
}

instance DIA_JORN_Q101_AFTERFABIOFIGHT(C_INFO) {
    NPC = 0xc8ef;
    NR = 1;
    CONDITION = DIA_JORN_Q101_AFTERFABIOFIGHT_CONDITION;
    INFORMATION = DIA_JORN_Q101_AFTERFABIOFIGHT_INFO;
    IMPORTANT = TRUE;
}

func int DIA_JORN_Q101_AFTERFABIOFIGHT_CONDITION() {
    if ((((Q101_FABIOAFTERFIGHT) == (TRUE)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((LOG_GETSTATUS(MIS_Q101)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JORN_Q101_AFTERFABIOFIGHT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_AfterFabioFight_01_00");
    if ((Q101_FABIOFIGHT) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_AfterFabioFight_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_AfterFabioFight_01_02");
    };
    if ((Q101_FABIOFIGHT) == (-(1))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_AfterFabioFight_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_AfterFabioFight_01_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_AfterFabioFight_01_05");
    };
}

instance DIA_JORN_Q101_WHATSUP(C_INFO) {
    NPC = 0xc8ef;
    NR = 1;
    CONDITION = DIA_JORN_Q101_WHATSUP_CONDITION;
    INFORMATION = DIA_JORN_Q101_WHATSUP_INFO;
    DESCRIPTION = "Anything new?";
}

func int DIA_JORN_Q101_WHATSUP_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0xfce0)) && ((NPC_GETDISTTOWP(SELF, "SHIP_JORN_02")) <= (TA_DIST_SELFWP_MAX))) && ((LOG_GETSTATUS(MIS_Q101)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void Q101_CAPTAIN_READYCUTSCENE() {
    Q101_CAPTAIN_CUTSCENEENABLE = 1;
    Q101_DISABLEEVERYONEPARTYMEMBER();
}

func void DIA_JORN_Q101_WHATSUP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_WhatsUp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_WhatsUp_01_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_WhatsUp_01_03");
    INFO_CLEARCHOICES(0xfce6);
    INFO_ADDCHOICE(0xfce6, "Actually, I'll talk to them.", 0xfcef);
    if ((SHIPTALK) == (0)) {
        INFO_ADDCHOICE(0xfce6, "No.", 0xfced);
    };
    INFO_ADDCHOICE(0xfce6, "More or less.", 0xfcec);
}

func void Q101_STARTPIRATESND() {
    WLD_SENDTRIGGER("Q101_SND_PIRATES_01");
    WLD_SENDUNTRIGGER("Q101_SND_SMALLTALK");
}

func void DIA_JORN_Q101_CAPTAINCOMING() {
    HERO.AIVAR[95] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_CaptainComing_01_01");
    AI_FUNCTION(SELF, 0xfcea);
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_CaptainComing_01_02");
    INFO_CLEARCHOICES(0xfce6);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xfce8);
}

func void DIA_JORN_Q101_WHATSUP_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_WhatsUp_Yes_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_WhatsUp_Yes_01_01");
    DIA_JORN_Q101_CAPTAINCOMING();
}

func void DIA_JORN_Q101_WHATSUP_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_WhatsUp_No_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_WhatsUp_No_01_01");
    DIA_JORN_Q101_CAPTAINCOMING();
}

var int Q101_JORNWILLTRY = 0;
func void DIA_JORN_Q101_WHATSUP_WILLTRY() {
    Q101_JORNWILLTRY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_WhatsUp_WillTry_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jorn_Q101_WhatsUp_WillTry_01_01");
    INFO_CLEARCHOICES(0xfce6);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_JORN_Q101_STANDING(C_INFO) {
    NPC = 0xc8ef;
    NR = 1;
    CONDITION = DIA_JORN_Q101_STANDING_CONDITION;
    INFORMATION = DIA_JORN_Q101_STANDING_INFO;
    DESCRIPTION = "How is it?";
}

func int DIA_JORN_Q101_STANDING_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0xfce6)) && ((Q101_JORNWILLTRY) == (TRUE))) && ((LOG_GETSTATUS(MIS_Q101)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JORN_Q101_STANDING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jorn_Q101_Standing_15_01");
    DIA_JORN_Q101_CAPTAINCOMING();
}

