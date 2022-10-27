instance DIA_LENNART_Q602_EXIT(C_INFO) {
    NPC = 0xea13;
    NR = 999;
    CONDITION = DIA_LENNART_Q602_EXIT_CONDITION;
    INFORMATION = DIA_LENNART_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LENNART_Q602_EXIT_CONDITION() {
    return TRUE;
}

var int LENNART_Q602_BYE = 0;
func void DIA_LENNART_Q602_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_EXIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_EXIT_03_02");
    AI_STOPPROCESSINFOS(SELF);
    if ((LENNART_Q602_BYE) == (FALSE)) {
        LENNART_Q602_BYE = 1;
        AI_LOGENTRY(TOPIC_Q602, LOG_Q602_LENNART_BYE);
    };
}

instance DIA_LENNART_Q602_STOP(C_INFO) {
    NPC = 0xea13;
    NR = 1;
    CONDITION = DIA_LENNART_Q602_STOP_CONDITION;
    INFORMATION = DIA_LENNART_Q602_STOP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LENNART_Q602_STOP_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LENNART_Q602_STOP_INFO() {
    INFO_CLEARCHOICES(0x161a1);
    AI_DRAWWEAPON(SELF);
    if (((HERO.GUILD) == (GIL_MIL)) || ((MARVIN_LOSTGUILDMILITA) == (1))) {
        AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_03_02");
        INFO_ADDCHOICE(0x161a1, "It's a long story, the important thing is that I'm here now.", 0x161a6);
        INFO_ADDCHOICE(0x161a1, "I assisted the Water Mages on their expedition to Volfzacke.", 0x161a7);
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_03_01");
    INFO_ADDCHOICE(0x161a1, "Relax, I came to help you!", 0x161a5);
}

func void DIA_LENNART_Q602_STOP_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_REMOVEWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_Next_03_03");
    AI_LOGENTRY(TOPIC_Q602, LOG_Q602_LENNART_RODERICH);
    INFO_CLEARCHOICES(0x161a1);
}

func void DIA_LENNART_Q602_STOP_CALMDOWN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_STOP_CalmDown_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_STOP_CalmDown_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_STOP_CalmDown_15_03");
    DIA_LENNART_Q602_STOP_NEXT();
}

func void DIA_LENNART_Q602_STOP_LONGSTORY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_STOP_LongStory_15_01");
    DIA_LENNART_Q602_STOP_NEXT();
}

func void DIA_LENNART_Q602_STOP_VOLFZACKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_STOP_Volfzacke_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_STOP_Volfzacke_15_02");
    DIA_LENNART_Q602_STOP_NEXT();
}

instance DIA_LENNART_Q602_WHATHAPPEND(C_INFO) {
    NPC = 0xea13;
    NR = 1;
    CONDITION = DIA_LENNART_Q602_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_LENNART_Q602_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about where this started?";
}

func int DIA_LENNART_Q602_WHATHAPPEND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x161a1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LENNART_Q602_WHATHAPPEND_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_WhatHappend_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_WhatHappend_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_WhatHappend_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_WhatHappend_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_WhatHappend_03_05");
    AI_LOGENTRY(TOPIC_Q602, LOG_Q602_LENNART_WHATHAPPEND);
}

instance DIA_LENNART_Q602_HOWMANY(C_INFO) {
    NPC = 0xea13;
    NR = 1;
    CONDITION = DIA_LENNART_Q602_HOWMANY_CONDITION;
    INFORMATION = DIA_LENNART_Q602_HOWMANY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How many of you are able to fight?";
}

func int DIA_LENNART_Q602_HOWMANY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x161a1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LENNART_Q602_HOWMANY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_HowMany_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_HowMany_03_02");
}

instance DIA_LENNART_Q602_NEED(C_INFO) {
    NPC = 0xea13;
    NR = 1;
    CONDITION = DIA_LENNART_Q602_NEED_CONDITION;
    INFORMATION = DIA_LENNART_Q602_NEED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you need anything?";
}

func int DIA_LENNART_Q602_NEED_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x161a1)) && ((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LENNART_Q602_NEED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_Need_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_Need_03_02");
}

instance DIA_LENNART_Q602_RECRUITS(C_INFO) {
    NPC = 0xea13;
    NR = 1;
    CONDITION = DIA_LENNART_Q602_RECRUITS_CONDITION;
    INFORMATION = DIA_LENNART_Q602_RECRUITS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found the recruits. They died fighting to the end.";
}

func int DIA_LENNART_Q602_RECRUITS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x161a1))) && ((Q602_BARRACK_EMPTYHOUSE_03_LOGENTRY) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LENNART_Q602_RECRUITS_INFO() {
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lennart_Q602_Recruits_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lennart_Q602_Recruits_03_02");
    AI_RESETFACEANI(SELF);
}

