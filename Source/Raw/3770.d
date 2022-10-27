instance DIA_TOMAS_EXIT(C_INFO) {
    NPC = 0xcd35;
    NR = 999;
    CONDITION = DIA_TOMAS_EXIT_CONDITION;
    INFORMATION = DIA_TOMAS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_TOMAS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_TOMAS_EXIT_INFO() {
    if ((CQ003_TALKWITHTOMAS) == (1)) {
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((CQ003_TALKWITHTOMAS) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_03_05");
        INFO_CLEARCHOICES(0x11098);
        INFO_ADDCHOICE(0x11098, "Why not, good beer needs to be shown to the world.", 0x1109d);
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            INFO_ADDCHOICE(0x11098, "Can you help me become a citizen of the city?", 0x1109c);
        };
        INFO_ADDCHOICE(0x11098, "Hm, I'll think about it some more.", 0x1109b);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_THINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Think_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Think_03_02");
    CQ003_TALKWITHTOMAS = 1;
    INFO_CLEARCHOICES(0x11098);
}

func void DIA_TOMAS_WAITIHAVEQUEST_CITIZEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Citizen_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Citizen_03_03");
}

func void DIA_TOMAS_WAITIHAVEQUEST_OKAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Okay_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_10");
    CQ003_TALKWITHTOMAS = 1;
    CREATEINVITEMS(SELF, 0x8e0c, 6);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e0c, 6);
    LOG_CREATETOPIC(TOPIC_CQ003, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_CQ003), TOPIC_CQ003, LOG_RUNNING);
    if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_STARTCITIZENSHIP);
    };
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_START);
    INFO_CLEARCHOICES(0x11098);
    INFO_ADDCHOICE(0x11098, "The quartermaster of the city guard would buy beer from you?", 0x110a0);
    INFO_ADDCHOICE(0x11098, "Do you want to work with the Merchant's Guild?", 0x110a2);
    INFO_ADDCHOICE(0x11098, "What about that brothel owner?", 0x110a1);
    INFO_ADDCHOICE(0x11098, "Tell me something about Gerstand.", 0x1109f);
    INFO_ADDCHOICE(0x11098, "Tell me something about Helga.", 0x1109e);
    INFO_ADDCHOICE(0x11098, "No, I can handle it.", 0x110a3);
}

func void DIA_TOMAS_WAITIHAVEQUEST_OLAF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Olaf_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Olaf_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Olaf_03_03");
    CQ003_TOMASQUESTINFORMATION = (CQ003_TOMASQUESTINFORMATION) + (1);
    if ((CQ003_TOMASQUESTINFORMATION) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_03");
        INFO_CLEARCHOICES(0x11098);
        INFO_CLEARCHOICES(0x110b4);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_GERSTAND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Gerstand_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Gerstand_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Gerstand_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Gerstand_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Gerstand_03_05");
    CQ003_TOMASQUESTINFORMATION = (CQ003_TOMASQUESTINFORMATION) + (1);
    if ((CQ003_TOMASQUESTINFORMATION) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_03");
        INFO_CLEARCHOICES(0x11098);
        INFO_CLEARCHOICES(0x110b4);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_LENNART() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Lennart_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Lennart_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Lennart_03_03");
    CQ003_TOMASQUESTINFORMATION = (CQ003_TOMASQUESTINFORMATION) + (1);
    if ((CQ003_TOMASQUESTINFORMATION) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_03");
        INFO_CLEARCHOICES(0x11098);
        INFO_CLEARCHOICES(0x110b4);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_VLADAN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Vladan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Vladan_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Vladan_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Vladan_03_04");
    CQ003_TOMASQUESTINFORMATION = (CQ003_TOMASQUESTINFORMATION) + (1);
    if ((CQ003_TOMASQUESTINFORMATION) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_03");
        INFO_CLEARCHOICES(0x11098);
        INFO_CLEARCHOICES(0x110b4);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_LORENZO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Lorenzo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Lorenzo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Lorenzo_03_03");
    CQ003_TOMASQUESTINFORMATION = (CQ003_TOMASQUESTINFORMATION) + (1);
    if ((CQ003_TOMASQUESTINFORMATION) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_03");
        INFO_CLEARCHOICES(0x11098);
        INFO_CLEARCHOICES(0x110b4);
    };
}

func void DIA_TOMAS_WAITIHAVEQUEST_FINE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Fine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Fine_03_02");
    INFO_CLEARCHOICES(0x11098);
    INFO_CLEARCHOICES(0x110b4);
}

instance DIA_TOMAS_HELLO(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_HELLO_CONDITION;
    INFORMATION = DIA_TOMAS_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TOMAS_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, VLK_854_JOE);
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_Hello_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_Hello_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_Hello_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Hello_03_11");
    TRADER_LOGENTRY_THOMAS();
}

instance DIA_TOMAS_WHATBEER(C_INFO) {
    NPC = 0xcd35;
    NR = 2;
    CONDITION = DIA_TOMAS_WHATBEER_CONDITION;
    INFORMATION = DIA_TOMAS_WHATBEER_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What are you brewing here?";
}

func int DIA_TOMAS_WHATBEER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110a4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_WHATBEER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_03_03");
    INFO_CLEARCHOICES(0x110a7);
    INFO_ADDCHOICE(0x110a7, "Dark Paladine.", 0x110aa);
    INFO_ADDCHOICE(0x110a7, "Islander Beer", 0x110ab);
    INFO_ADDCHOICE(0x110a7, "Maybe some other time, I don't have time right now.", 0x110ac);
}

func void DIA_TOMAS_WHATBEER_PALADIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_Paladin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_Paladin_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Paladin_03_11");
}

func void DIA_TOMAS_WHATBEER_BEER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_Beer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_Beer_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Beer_03_08");
}

func void DIA_TOMAS_WHATBEER_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WhatBeer_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WhatBeer_Bye_03_02");
    INFO_CLEARCHOICES(0x110a7);
}

instance DIA_TOMAS_WORK(C_INFO) {
    NPC = 0xcd35;
    NR = 3;
    CONDITION = DIA_TOMAS_WORK_CONDITION;
    INFORMATION = DIA_TOMAS_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you tell me something about making beer?";
}

func int DIA_TOMAS_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110a4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int TOMAS_READYTOTOLDHISTORY = 0;
func void DIA_TOMAS_WORK_INFO() {
    VOLKERREPUTATION = 1;
    CHANGEVOBCOLLISION("TOMASHISTORY_SCRIPT_01", TRUE, TRUE, TRUE, FALSE);
    CHANGEVOBCOLLISION("TOMASHISTORY_SCRIPT_02", TRUE, TRUE, TRUE, FALSE);
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Work_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "BEER_01");
}

instance DIA_TOMAS_WORKDOWN(C_INFO) {
    NPC = 0xcd35;
    NR = 4;
    CONDITION = DIA_TOMAS_WORKDOWN_CONDITION;
    INFORMATION = DIA_TOMAS_WORKDOWN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TOMAS_WORKDOWN_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110ad)) {
        if ((((NPC_GETDISTTOWP(SELF, "PARTM2_TAVERN_22")) <= (500)) && ((TOMAS_READYTOTOLDHISTORY) == (TRUE))) && ((VOLKERREPUTATION) != (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_WORKDOWN_INFO() {
    VOLKERREPUTATION = 0;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WorkDown_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WorkDown_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WorkDown_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WorkDown_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WorkDown_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WorkDown_03_08");
    NPC_EXCHANGEROUTINE(SELF, START);
    NPC_EXCHANGEROUTINE(VLK_854_JOE, START);
    AI_RESETFACEANI(SELF);
}

instance DIA_TOMAS_WAITIHAVEQUEST(C_INFO) {
    NPC = 0xcd35;
    NR = 7;
    CONDITION = DIA_TOMAS_WAITIHAVEQUEST_CONDITION;
    INFORMATION = DIA_TOMAS_WAITIHAVEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I've thought it over. I'll help you.";
}

func int DIA_TOMAS_WAITIHAVEQUEST_CONDITION() {
    if (((((CQ003_TALKWITHTOMAS) == (1)) && ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_RUNNING))) && ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_FAILED))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_WAITIHAVEQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_WaitIHaveQuest_Okay_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_WaitIHaveQuest_Okay_03_10");
    CREATEINVITEMS(SELF, 0x8e0c, 6);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e0c, 6);
    LOG_CREATETOPIC(TOPIC_CQ003, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_CQ003), TOPIC_CQ003, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_START);
    INFO_CLEARCHOICES(0x110b4);
    INFO_ADDCHOICE(0x110b4, "The quartermaster of the city guard would buy beer from you?", 0x110a0);
    INFO_ADDCHOICE(0x110b4, "Do you want to work with the Merchant's Guild?", 0x110a2);
    INFO_ADDCHOICE(0x110b4, "What about that brothel owner?", 0x110a1);
    INFO_ADDCHOICE(0x110b4, "Tell me something about Gerstand.", 0x1109f);
    INFO_ADDCHOICE(0x110b4, "Tell me something about Helga.", 0x1109e);
    INFO_ADDCHOICE(0x110b4, "No, I can handle it.", 0x110a3);
}

instance DIA_TOMAS_REMINDME(C_INFO) {
    NPC = 0xcd35;
    NR = 8;
    CONDITION = DIA_TOMAS_REMINDME_CONDITION;
    INFORMATION = DIA_TOMAS_REMINDME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Look, I have a short memory...";
}

func int DIA_TOMAS_REMINDME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ003)) == (LOG_RUNNING)) && ((CQ003_TALKED) != (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_REMINDME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_RemindMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_RemindMe_03_02");
    INFO_CLEARCHOICES(0x110b7);
    INFO_ADDCHOICE(0x110b7, DIALOG_BACK, 0x110ba);
    INFO_ADDCHOICE(0x110b7, "The quartermaster of the city guard would buy beer from you?", 0x110a0);
    INFO_ADDCHOICE(0x110b7, "Do you want to work with the Merchant's Guild?", 0x110a2);
    INFO_ADDCHOICE(0x110b7, "What about that brothel owner?", 0x110a1);
    INFO_ADDCHOICE(0x110b7, "Tell me something about Gerstand.", 0x1109f);
    INFO_ADDCHOICE(0x110b7, "Tell me something about Helga.", 0x1109e);
}

func void DIA_TOMAS_REMINDME_BACK() {
    INFO_CLEARCHOICES(0x110b7);
}

instance DIA_TOMAS_CQ003DONE(C_INFO) {
    NPC = 0xcd35;
    NR = 9;
    CONDITION = DIA_TOMAS_CQ003DONE_CONDITION;
    INFORMATION = DIA_TOMAS_CQ003DONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came back. I did what I could.";
}

func int DIA_TOMAS_CQ003DONE_CONDITION() {
    if (((CQ003_TALKED) == (5)) && ((LOG_GETSTATUS(MIS_CQ003)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int CQ003_TOMAS_REFERENCEEXCHANGE = 0;
func void DIA_TOMAS_CQ003DONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_02");
    if ((CQ003_HAPPYOLAF) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_03");
    };
    if ((CQ003_HAPPYOLAF) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_04");
    };
    if ((CQ003_HAPPYGERSTAND) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_05");
    };
    if ((CQ003_HAPPYGERSTAND) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_06");
    };
    if ((CQ003_HAPPYLENNART) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_07");
    };
    if ((CQ003_HAPPYLENNART) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_08");
    };
    if ((CQ003_HAPPYVLADAN) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_09");
    };
    if ((CQ003_HAPPYLORENZO) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_11");
    };
    if ((CQ003_HAPPYLORENZO) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_12");
    };
    if ((CQ003_HAPPYLORENZO) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_13");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_14");
    };
    if ((CQ003_HAPPYLORENZO) == (6)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_13");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_15");
    };
    if ((CQ003_HAPPYCUSTOMER) <= (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_16");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_17");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_19");
        };
        AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FAILED);
        LOG_SETSTATUS(_@(MIS_CQ003), TOPIC_CQ003, LOG_FAILED);
        CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_TIER1);
    };
    if (((CQ003_HAPPYCUSTOMER) <= (8)) && ((CQ003_HAPPYCUSTOMER) >= (3))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_20");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_21");
            CREATEINVITEMS(SELF, 0x912b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
            CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_ALWAYS_TIER1);
        } else {
            CQ003_TOMAS_REFERENCEEXCHANGE = 1;
            CREATEINVITEMS(SELF, 0x859b, (CQ003_REWARD_ALWAYS_TIER1) + (CQ003_REWARD_TIER1));
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ003_REWARD_ALWAYS_TIER1) + (CQ003_REWARD_TIER1));
        } else {
            AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FINISHV1);
        } else {
            B_GIVEPLAYERXP(XP_CQ003_TIER_1);
        } else {
            /* set_instance(0) */;
        };
    };
    if (((CQ003_HAPPYCUSTOMER) <= (10)) && ((CQ003_HAPPYCUSTOMER) >= (9))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_22");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_23");
            CREATEINVITEMS(SELF, 0x912b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
            CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_ALWAYS_TIER2);
        } else {
            CQ003_TOMAS_REFERENCEEXCHANGE = 2;
            CREATEINVITEMS(SELF, 0x859b, (CQ003_REWARD_ALWAYS_TIER2) + (CQ003_REWARD_TIER2));
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ003_REWARD_ALWAYS_TIER2) + (CQ003_REWARD_TIER2));
        } else {
            AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FINISHV2);
        } else {
            B_GIVEPLAYERXP(XP_CQ003_TIER_2);
        } else {
            /* set_instance(0) */;
        };
    };
    if (((CQ003_HAPPYCUSTOMER) <= (13)) && ((CQ003_HAPPYCUSTOMER) >= (11))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_24");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_25");
            CREATEINVITEMS(SELF, 0x912b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
            CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_ALWAYS_TIER3);
        } else {
            CQ003_TOMAS_REFERENCEEXCHANGE = 3;
            CREATEINVITEMS(SELF, 0x859b, (CQ003_REWARD_ALWAYS_TIER3) + (CQ003_REWARD_TIER3));
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ003_REWARD_ALWAYS_TIER3) + (CQ003_REWARD_TIER3));
        } else {
            AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FINISHV3);
        } else {
            B_GIVEPLAYERXP(XP_CQ003_TIER_3);
        } else {
            /* set_instance(0) */;
        };
    };
    if (((CQ003_HAPPYCUSTOMER) <= (16)) && ((CQ003_HAPPYCUSTOMER) >= (14))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_26");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_27");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_28");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_29");
            CREATEINVITEMS(SELF, 0x912b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
            CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_ALWAYS_TIER4);
        } else {
            CQ003_TOMAS_REFERENCEEXCHANGE = 4;
            CREATEINVITEMS(SELF, 0x859b, (CQ003_REWARD_ALWAYS_TIER4) + (CQ003_REWARD_TIER4));
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ003_REWARD_ALWAYS_TIER4) + (CQ003_REWARD_TIER4));
        } else {
            AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FINISHV4);
        } else {
            B_GIVEPLAYERXP(XP_CQ003_TIER_4);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((CQ003_HAPPYCUSTOMER) >= (17)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_30");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_31");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_32");
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Tomas_CQ003Done_15_18");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_33");
            AI_OUTPUT(SELF, OTHER, "DIA_Tomas_CQ003Done_03_34");
            CREATEINVITEMS(SELF, 0x912b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
            CREATEINVITEMS(SELF, 0x859b, CQ003_REWARD_ALWAYS_TIER5);
        } else {
            CQ003_TOMAS_REFERENCEEXCHANGE = 5;
            CREATEINVITEMS(SELF, 0x859b, (CQ003_REWARD_ALWAYS_TIER5) + (CQ003_REWARD_TIER5));
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ003_REWARD_ALWAYS_TIER5) + (CQ003_REWARD_TIER5));
        } else {
            AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_FINISHV5);
        } else {
            B_GIVEPLAYERXP(XP_CQ003_TIER_5);
        };
    };
    LOG_SETSTATUS(_@(MIS_CQ003), TOPIC_CQ003, LOG_SUCCESS);
}

instance DIA_TOMAS_REFERENCEEXCHANGE(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_REFERENCEEXCHANGE_CONDITION;
    INFORMATION = DIA_TOMAS_REFERENCEEXCHANGE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Could I trade my reward for a reference?";
}

func int DIA_TOMAS_REFERENCEEXCHANGE_CONDITION() {
    if (((((CQ003_TOMAS_REFERENCEEXCHANGE) >= (1)) && ((CQ003_TOMAS_REFERENCEEXCHANGE) < (6))) && ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x11f69))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_REFERENCEEXCHANGE_CHOICES() {
    INFO_CLEARCHOICES(0x110bf);
    if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (1)) {
        INFO_ADDCHOICE(0x110bf, DIALOG_GIVE30G, 0x110c3);
    };
    if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (2)) {
        INFO_ADDCHOICE(0x110bf, DIALOG_GIVE50G, 0x110c3);
    };
    if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (3)) {
        INFO_ADDCHOICE(0x110bf, DIALOG_GIVE65G, 0x110c3);
    };
    if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (4)) {
        INFO_ADDCHOICE(0x110bf, DIALOG_GIVE80G, 0x110c3);
    };
    if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (5)) {
        INFO_ADDCHOICE(0x110bf, DIALOG_GIVE100G, 0x110c3);
    };
    INFO_ADDCHOICE(0x110bf, DIALOG_BACK, 0x110c4);
}

func void DIA_TOMAS_REFERENCEEXCHANGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Boris_ReferenceExchange_15_01");
    DIA_TOMAS_REFERENCEEXCHANGE_CHOICES();
}

func void DIA_TOMAS_REFERENCEEXCHANGE_GIVEGOLD() {
    if (((((((CQ003_TOMAS_REFERENCEEXCHANGE) == (1)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ003_REWARD_TIER1))) || (((CQ003_TOMAS_REFERENCEEXCHANGE) == (2)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ003_REWARD_TIER2)))) || (((CQ003_TOMAS_REFERENCEEXCHANGE) == (3)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ003_REWARD_TIER3)))) || (((CQ003_TOMAS_REFERENCEEXCHANGE) == (4)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ003_REWARD_TIER4)))) || (((CQ003_TOMAS_REFERENCEEXCHANGE) == (5)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ003_REWARD_TIER5)))) {
        if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (1)) {
        } else if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (2)) {
        } else if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (3)) {
        } else if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (4)) {
        } else if ((CQ003_TOMAS_REFERENCEEXCHANGE) == (5)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, CQ003_REWARD_TIER5);
            NPC_REMOVEINVITEMS(SELF, 0x859b, CQ003_REWARD_TIER5);
        };
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$SURE_V1");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x912b, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x912b, 1);
        CQ003_TOMAS_REFERENCEEXCHANGE = 6;
        INFO_CLEARCHOICES(0x110bf);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_TOMAS_REFERENCEEXCHANGE_CHOICES();
}

func void DIA_TOMAS_REFERENCEEXCHANGE_BACK() {
    INFO_CLEARCHOICES(0x110bf);
}

instance DIA_TOMAS_SQ225_GERHARD(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_SQ225_GERHARD_CONDITION;
    INFORMATION = DIA_TOMAS_SQ225_GERHARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know Gerhard?";
}

func int DIA_TOMAS_SQ225_GERHARD_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_HOLDWIGWAY_AGREED) == (TRUE))) && ((SQ225_FOUNDGERHARD) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_SQ225_GERHARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ225_Gerhard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ225_Gerhard_03_02");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_LOOKINGFORGERHARD_KNOWWHEREISHIM);
}

instance DIA_TOMAS_SQ405_DEAL(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_SQ405_DEAL_CONDITION;
    INFORMATION = DIA_TOMAS_SQ405_DEAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I managed to get you a new client.";
}

func int DIA_TOMAS_SQ405_DEAL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ003)) == (LOG_SUCCESS)) && ((SQ405_WEHAVEADEAL) != (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_SQ405_DEAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ405_Deal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ405_Deal_15_05");
    if ((SQ405_WEHAVEADEAL) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ405_Deal_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_09");
    };
    if ((SQ405_WEHAVEADEAL) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ405_Deal_15_11");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_13");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_14");
    if ((SQ405_WEHAVEADEAL) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_15");
        LOG_SETSTATUS(_@(MIS_SQ405), TOPIC_SQ405, LOG_SUCCESS);
        AI_LOGENTRY(TOPIC_SQ405, LOG_SQ405_SUCCESSV1);
        B_GIVEPLAYERXP(XP_SQ405_SUCCESSV1);
        CREATEINVITEMS(SELF, 0x859b, (SQ405_TOMASPRICE) * (2));
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, (SQ405_TOMASPRICE) * (2));
    };
    if ((SQ405_WEHAVEADEAL) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_16");
        LOG_SETSTATUS(_@(MIS_SQ405), TOPIC_SQ405, LOG_SUCCESS);
        AI_LOGENTRY(TOPIC_SQ405, LOG_SQ405_SUCCESSV2);
        B_GIVEPLAYERXP(XP_SQ405_SUCCESSV2);
        SQ405_WEEKMONEY = WLD_GETDAY();
        CREATEINVITEMS(SELF, 0x859b, (SQ405_TOMASPRICE) * (3));
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, (SQ405_TOMASPRICE) * (3));
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Deal_03_17");
    SQ405_DAYSUPPLY = WLD_GETDAY();
    CREATEINVITEMS(SELF, 0x8e0c, 5);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e0c, 5);
}

instance DIA_TOMAS_SQ405_AFTERMATCH(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_SQ405_AFTERMATCH_CONDITION;
    INFORMATION = DIA_TOMAS_SQ405_AFTERMATCH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I came for my share.";
}

func int DIA_TOMAS_SQ405_AFTERMATCH_CONDITION() {
    if (((SQ405_WEHAVEADEAL) == (2)) && (NPC_KNOWSINFO(OTHER, 0x110c8))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_SQ405_AFTERMATCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_SQ405_Aftermatch_15_00");
    if ((SQ405_DAYSUPPLY) == (WLD_GETDAY())) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_01");
    };
    if ((SQ405_WEEKMONEY) <= ((WLD_GETDAY()) - (7))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_10");
        SQ405_WEEKMONEY = WLD_GETDAY();
        CREATEINVITEMS(SELF, 0x859b, SQ405_TOMASPRICE);
    };
    if ((SQ405_WEEKMONEY) == (WLD_GETDAY())) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_03");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (6))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_04");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_05");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (4))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_06");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (3))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_07");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_08");
    };
    if ((SQ405_WEEKMONEY) == ((WLD_GETDAY()) - (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_09");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_SQ405_Aftermatch_03_01");
}

instance DIA_TOMAS_Q505_HELP(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_Q505_HELP_CONDITION;
    INFORMATION = DIA_TOMAS_Q505_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm going on an expedition and could use some of your beer.";
}

func int DIA_TOMAS_Q505_HELP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13974)) && ((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING))) {
        if ((LOG_GETSTATUS(MIS_CQ003)) == (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_Q505_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tomas_Q505_Help_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Q505_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Q505_Help_03_03");
    AI_RESETFACEANI(SELF);
    CREATEINVITEMS(SELF, 0x92ac, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x92ac, 1);
}

instance DIA_TOMAS_AMBIENT(C_INFO) {
    NPC = 0xcd35;
    NR = 1;
    CONDITION = DIA_TOMAS_AMBIENT_CONDITION;
    INFORMATION = DIA_TOMAS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_TOMAS_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (NPC_KNOWSINFO(OTHER, 0x110a4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((((LOG_GETSTATUS(MIS_CQ003)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_FAILED))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_CQ003)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Ambient_03_03");
    };
    if ((LOG_GETSTATUS(MIS_CQ003)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Ambient_03_04");
    };
    if ((LOG_GETSTATUS(MIS_CQ003)) == (LOG_FAILED)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tomas_Ambient_03_05");
    };
}

instance DIA_TOMAS_TRADE(C_INFO) {
    NPC = 0xcd35;
    NR = 800;
    CONDITION = DIA_TOMAS_TRADE_CONDITION;
    INFORMATION = DIA_TOMAS_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_TOMAS_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110a4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
}

instance DIA_TOMAS_PICKPOCKET(C_INFO) {
    NPC = 0xcd35;
    NR = 900;
    CONDITION = DIA_TOMAS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_TOMAS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_TOMAS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOMAS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x110d7);
    INFO_ADDCHOICE(0x110d7, DIALOG_BACK, 0x110db);
    INFO_ADDCHOICE(0x110d7, DIALOG_PICKPOCKET, 0x110da);
}

func void DIA_TOMAS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8e0c, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8e0c, 2);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x110d7);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x110d7);
}

func void DIA_TOMAS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x110d7);
}

