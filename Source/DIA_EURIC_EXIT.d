instance DIA_EURIC_EXIT(C_INFO) {
    NPC = 53706;
    NR = 999;
    CONDITION = DIA_EURIC_EXIT_CONDITION;
    INFORMATION = DIA_EURIC_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_EURIC_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_EURIC_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EURIC_KQ404_GRAYSON(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ404_GRAYSON_CONDITION;
    INFORMATION = DIA_EURIC_KQ404_GRAYSON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm coming from Grayson.";
}

func int DIA_EURIC_KQ404_GRAYSON_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && ((KQ404_INEXTREMO_BAITED) == (TRUE))) && ((KQ404_UNICORNLIST_READ) == (FALSE))) && (NPC_KNOWSINFO(OTHER, 65714))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ404_GRAYSON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Grayson_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Grayson_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Grayson_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Grayson_03_04");
    NPC_EXCHANGEROUTINE(SELF, "KALEBHOUSE");
}

instance DIA_EURIC_KQ404_ORDERS(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ404_ORDERS_CONDITION;
    INFORMATION = DIA_EURIC_KQ404_ORDERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "But Grayson ordered...";
}

func int DIA_EURIC_KQ404_ORDERS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65682))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ404_ORDERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Orders_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Orders_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Orders_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Orders_03_04");
}

instance DIA_EURIC_KQ404_WHATDO(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ404_WHATDO_CONDITION;
    INFORMATION = DIA_EURIC_KQ404_WHATDO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Then what do you think I should do?";
}

func int DIA_EURIC_KQ404_WHATDO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65685))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ404_WHATDO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_WhatDo_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_WhatDo_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_WhatDo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_WhatDo_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_WhatDo_03_05");
    AI_LOGENTRY(TOPIC_KQ404, LOG_KQ404_EURIC_NEXTMOVE);
}

instance DIA_EURIC_KQ404_GUARDARMOR(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ404_GUARDARMOR_CONDITION;
    INFORMATION = DIA_EURIC_KQ404_GUARDARMOR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have an unusual request...";
}

func int DIA_EURIC_KQ404_GUARDARMOR_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && ((KQ404_UNICORNLIST_READ) == (TRUE))) && ((INEXTREMO_CANPLAYCONCERT) == (TRUE))) && ((KQ404_GUARDARMOR_WHO) == (0))) {
        if ((KQ404_UNICORNLIST_GOTEVERYTHING) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ404_GUARDARMOR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_03_04");
    INFO_CLEARCHOICES(65691);
    INFO_ADDCHOICE(65691, "There was no topic!", 65695);
    INFO_ADDCHOICE(65691, "Think of the benefits for both of us!", 65698);
    INFO_ADDCHOICE(65691, "Without that, I will never be able to gain their trust!", 65696);
}

func void DIA_EURIC_KQ404_GUARDARMOR_FAILED() {
    INFO_CLEARCHOICES(65691);
    AI_LOGENTRY(TOPIC_KQ404, LOG_KQ404_EURIC_GIVEARMOR_FAILED);
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void DIA_EURIC_KQ404_GUARDARMOR_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_No_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_No_03_02");
    DIA_EURIC_KQ404_GUARDARMOR_FAILED();
}

func void DIA_EURIC_KQ404_GUARDARMOR_TRUST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_Trust_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_Trust_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_Trust_03_03");
    DIA_EURIC_KQ404_GUARDARMOR_FAILED();
}

func void EURIC_KQ404_GIVEARMOR() {
    CREATEINVITEMS(MIL_13381_EURIC, 35615, 1);
    AI_EQUIPARMOR(MIL_13381_EURIC, 35615);
    B_GIVEINVITEMS(MIL_13381_EURIC, HERO, 35615, 1);
}

func void DIA_EURIC_KQ404_GUARDARMOR_BENEFITS() {
    KQ404_GUARDARMOR_WHO = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_Benefits_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_Benefits_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_GuardArmor_Benefits_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_Benefits_03_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_GuardArmor_Benefits_03_05");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_FUNCTION(SELF, 65697);
    INFO_CLEARCHOICES(65691);
}

instance DIA_EURIC_KQ404_TIME(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ404_TIME_CONDITION;
    INFORMATION = DIA_EURIC_KQ404_TIME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Soon In Extremo will give you an excuse to arrest them.";
}

func int DIA_EURIC_KQ404_TIME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 68569))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ404_TIME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Time_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Time_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ404_Time_15_08");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ404_Time_03_09");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_KQ404, LOG_KQ404_EURIC_INFO);
    NPC_EXCHANGEROUTINE(SELF, "KQ404_FINAL");
    KQ404_INEXTREMO_BIGCONCERT_PREPARENPC();
}

instance DIA_EURIC_KQ407_GRAYSONSEARCH(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ407_GRAYSONSEARCH_CONDITION;
    INFORMATION = DIA_EURIC_KQ407_GRAYSONSEARCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EURIC_KQ407_GRAYSONSEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_FARMERSATMEDIC) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ407_GRAYSONSEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_GraysonSearch_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_GraysonSearch_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_GraysonSearch_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_GraysonSearch_03_04");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_GraysonSearch_15_05");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_GraysonSearch_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_EURIC_TOGRAYSON);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "KQ407_KALEB");
}

instance DIA_EURIC_KQ407_ORCSTHIRDROUND(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ407_ORCSTHIRDROUND_CONDITION;
    INFORMATION = DIA_EURIC_KQ407_ORCSTHIRDROUND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where is everybody?";
}

func int DIA_EURIC_KQ407_ORCSTHIRDROUND_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_ORCLEADER_PART15_DEAD) == (TRUE))) && ((KQ407_ORCLEADER_PART1_DEAD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ407_ORCSTHIRDROUND_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_OrcsThirdRound_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_OrcsThirdRound_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_OrcsThirdRound_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_OrcsThirdRound_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_OrcsThirdRound_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_OrcsThirdRound_15_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_EURIC_FARM);
    AI_FUNCTION(SELF, 61796);
}

instance DIA_EURIC_KQ407_READY(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ407_READY_CONDITION;
    INFORMATION = DIA_EURIC_KQ407_READY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EURIC_KQ407_READY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 70589))) && ((NPC_GETDISTTOWP(SELF, "PART4_KQ407_EURIC_STAND_01")) <= (700))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ407_READY_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_Ready_03_01");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_Ready_15_02");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_Ready_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_Ready_15_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_Ready_03_05");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 61819);
}

instance DIA_EURIC_KQ407_AFTERFIGHT(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_KQ407_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_EURIC_KQ407_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EURIC_KQ407_AFTERFIGHT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "PART6_PATH_114")) <= (1000))) && (NPC_KNOWSINFO(OTHER, 65708))) {
        if (NPC_ISDEAD(ORCLEADER_PART6)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_KQ407_AFTERFIGHT_INFO() {
    KQ407_ORCLEADER_PART6_DEAD = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Euric_KQ407_AfterFight_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_05");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_06");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_KQ407_AfterFight_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_EURIC_PART6CLEAR);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 61820);
}

instance DIA_EURIC_HELLO(C_INFO) {
    NPC = 53706;
    NR = 1;
    CONDITION = DIA_EURIC_HELLO_CONDITION;
    INFORMATION = DIA_EURIC_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_EURIC_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_EURIC_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatAreYouDoing2");
    AI_OUTPUT(SELF, OTHER, "DIA_Euric_Hello_03_01");
}

instance DIA_EURIC_AMBIENT(C_INFO) {
    NPC = 53706;
    NR = 998;
    CONDITION = DIA_EURIC_AMBIENT_CONDITION;
    INFORMATION = DIA_EURIC_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_EURIC_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 65714)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((LOG_GETSTATUS(MIS_KQ404)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Euric_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_KQ404)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_KQ407)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Euric_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_KQ407)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Euric_Ambient_03_03");
    };
}

instance DIA_EURIC_PICKPOCKET(C_INFO) {
    NPC = 53706;
    NR = 900;
    CONDITION = DIA_EURIC_PICKPOCKET_CONDITION;
    INFORMATION = DIA_EURIC_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_EURIC_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EURIC_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(65720);
    INFO_ADDCHOICE(65720, DIALOG_BACK, 65724);
    INFO_ADDCHOICE(65720, DIALOG_PICKPOCKET, 65723);
}

func void DIA_EURIC_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(65720);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(65720);
}

func void DIA_EURIC_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(65720);
}

