instance DIA_OLIVER_EXIT(C_INFO) {
    NPC = 0xd1eb;
    NR = 999;
    CONDITION = DIA_OLIVER_EXIT_CONDITION;
    INFORMATION = DIA_OLIVER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OLIVER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OLIVER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OLIVER_KQ407_HELLO(C_INFO) {
    NPC = 0xd1eb;
    NR = 1;
    CONDITION = DIA_OLIVER_KQ407_HELLO_CONDITION;
    INFORMATION = DIA_OLIVER_KQ407_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hello. Are you Oliver?";
}

func int DIA_OLIVER_KQ407_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_FARMERSATMEDIC) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int OLIVER_KQ407_HELLO_WHAT = 0;
var int OLIVER_KQ407_HELLO_SOMETHING = 0;
var int OLIVER_KQ407_HELLO_WHY = 0;
var int OLIVER_KQ407_HELLO_COUNT = 0;
func void DIA_OLIVER_KQ407_HELLO_CHOICES() {
    INFO_CLEARCHOICES(0x1016b);
    if ((OLIVER_KQ407_HELLO_COUNT) >= (2)) {
        INFO_ADDCHOICE(0x1016b, "I found out what I wanted.", 0x1017a);
    };
    if ((OLIVER_KQ407_HELLO_WHY) == (FALSE)) {
        INFO_ADDCHOICE(0x1016b, "Why do orcs hate us so much?", 0x10177);
    };
    if ((OLIVER_KQ407_HELLO_SOMETHING) == (FALSE)) {
        INFO_ADDCHOICE(0x1016b, "Is there anything I should know before we start?", 0x10176);
    };
    if ((OLIVER_KQ407_HELLO_WHAT) == (FALSE)) {
        INFO_ADDCHOICE(0x1016b, "What do you know about those beasts?", 0x10175);
    };
}

func void DIA_OLIVER_KQ407_HELLO_BACK() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    OLIVER_KQ407_HELLO_COUNT = (OLIVER_KQ407_HELLO_COUNT) + (1);
    DIA_OLIVER_KQ407_HELLO_CHOICES();
}

func void INFO_ADDCHOICE_OLIVER_KQ407_HELLO_COMEBACK() {
    INFO_ADDCHOICE(0x1016b, "(GO BACK TO PREVIOUS QUESTIONS)", 0x10172);
}

func void DIA_OLIVER_KQ407_HELLO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_15_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    DIA_OLIVER_KQ407_HELLO_CHOICES();
}

func void DIA_OLIVER_KQ407_HELLO_WHAT() {
    OLIVER_KQ407_HELLO_WHAT = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_What_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_What_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_What_03_05");
    INFO_CLEARCHOICES(0x1016b);
    INFO_ADDCHOICE_OLIVER_KQ407_HELLO_COMEBACK();
    INFO_ADDCHOICE(0x1016b, "Social structures?", 0x10178);
}

func void DIA_OLIVER_KQ407_HELLO_SOMETHING() {
    OLIVER_KQ407_HELLO_SOMETHING = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_Something_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Something_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Something_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Something_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Something_03_05");
    INFO_CLEARCHOICES(0x1016b);
    INFO_ADDCHOICE_OLIVER_KQ407_HELLO_COMEBACK();
    INFO_ADDCHOICE(0x1016b, "What do you hope to achieve with this?", 0x10179);
}

func void DIA_OLIVER_KQ407_HELLO_WHY() {
    OLIVER_KQ407_HELLO_WHY = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_Why_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_06");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_07");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_08");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_09");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Why_03_10");
    DIA_OLIVER_KQ407_HELLO_BACK();
}

func void DIA_OLIVER_KQ407_HELLO_WHAT_SOCIETY() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_Society_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_06");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Society_03_07");
    DIA_OLIVER_KQ407_HELLO_BACK();
}

func void DIA_OLIVER_KQ407_HELLO_SOMETHING_SUCCESS() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_Success_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Success_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_Success_03_03");
    DIA_OLIVER_KQ407_HELLO_BACK();
}

func void DIA_OLIVER_KQ407_HELLO_LETSGO() {
    KQ407_CHANGEOLIVERRTN = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_Hello_LetsGo_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_Hello_LetsGo_03_02");
    INFO_CLEARCHOICES(0x1016b);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_OLIVER_GO);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "KQ407_GUIDE_00");
}

instance DIA_OLIVER_KQ407_LETSSTART(C_INFO) {
    NPC = 0xd1eb;
    NR = 1;
    CONDITION = DIA_OLIVER_KQ407_LETSSTART_CONDITION;
    INFORMATION = DIA_OLIVER_KQ407_LETSSTART_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OLIVER_KQ407_LETSSTART_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1016b))) && ((NPC_GETDISTTOWP(SELF, "PARTM3_PRISON_19")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OLIVER_KQ407_LETSSTART_INFO() {
    CREATEINVITEMS(SELF, 0x8cf6, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8cf6, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_LetsStart_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_LetsStart_03_02");
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Oliver_KQ407_LetsStart_15_03");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_LetsStart_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oliver_KQ407_LetsStart_03_05");
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(HERO);
    AI_UNEQUIPWEAPONS(HERO);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf14d);
}

instance DIA_OLIVER_AMBIENT(C_INFO) {
    NPC = 0xd1eb;
    NR = 998;
    CONDITION = DIA_OLIVER_AMBIENT_CONDITION;
    INFORMATION = DIA_OLIVER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_OLIVER_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1016b)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OLIVER_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((LOG_GETSTATUS(MIS_KQ407)) != (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Oliver_Ambient_03_01");
    };
    if ((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Oliver_Ambient_03_02");
    };
}

instance DIA_OLIVER_PICKPOCKET(C_INFO) {
    NPC = 0xd1eb;
    NR = 900;
    CONDITION = DIA_OLIVER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_OLIVER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_OLIVER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OLIVER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x10181);
    INFO_ADDCHOICE(0x10181, DIALOG_BACK, 0x10185);
    INFO_ADDCHOICE(0x10181, DIALOG_PICKPOCKET, 0x10184);
}

func void DIA_OLIVER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x10181);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x10181);
}

func void DIA_OLIVER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x10181);
}

