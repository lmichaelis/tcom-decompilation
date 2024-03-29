instance DIA_BERMAR_EXIT(C_INFO) {
    NPC = 56202;
    NR = 999;
    CONDITION = DIA_BERMAR_EXIT_CONDITION;
    INFORMATION = DIA_BERMAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BERMAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BERMAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_BERMAR_HELLO(C_INFO) {
    NPC = 56202;
    NR = 1;
    CONDITION = DIA_BERMAR_HELLO_CONDITION;
    INFORMATION = DIA_BERMAR_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BERMAR_HELLO_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_HELLO_03_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_HELLO_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_BERMAR_WHO(C_INFO) {
    NPC = 56202;
    NR = 5;
    CONDITION = DIA_BERMAR_WHO_CONDITION;
    INFORMATION = DIA_BERMAR_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_BERMAR_WHO_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Who_03_03");
    AI_RESETFACEANI(SELF);
}

instance DIA_BERMAR_SQ125_START(C_INFO) {
    NPC = 56202;
    NR = 1;
    CONDITION = DIA_BERMAR_SQ125_START_CONDITION;
    INFORMATION = DIA_BERMAR_SQ125_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have a job for me?";
}

func int DIA_BERMAR_SQ125_START_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_SQ125_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Start_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_03_04");
    AI_FUNCTION(SELF, 62138);
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_03_05");
    AI_TURNTONPC(SELF, BAU_6342_KYLE);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_03_06");
    AI_TURNTONPC(SELF, OTHER);
    INFO_CLEARCHOICES(78273);
    INFO_ADDCHOICE(78273, "It's your farm, can't you kick him out?", 78276);
}

func void DIA_BERMAR_SQ125_START_FARM() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Start_Farm_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_Farm_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_Farm_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_Farm_03_04");
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Start_Farm_15_05");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Start_Farm_03_06");
    INFO_CLEARCHOICES(78273);
    LOG_CREATETOPIC(TOPIC_SQ125, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ125), TOPIC_SQ125, LOG_RUNNING);
    if (((LOG_GETSTATUS(MIS_SQ126)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ126)) == (LOG_SUCCESS))) {
        AI_LOGENTRY(TOPIC_SQ125, LOG_SQ125_START_SQ126);
    };
    AI_LOGENTRY(TOPIC_SQ125, LOG_SQ125_START);
}

instance DIA_BERMAR_FOUNDORC(C_INFO) {
    NPC = 56202;
    NR = 8;
    CONDITION = DIA_BERMAR_FOUNDORC_CONDITION;
    INFORMATION = DIA_BERMAR_FOUNDORC_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I saw an orc near your farm.";
}

func int DIA_BERMAR_FOUNDORC_CONDITION() {
    if ((BENGARFARM_ORCENCOUNTER) == (2)) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_FOUNDORC_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_FoundOrc_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_FoundOrc_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_FoundOrc_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_FoundOrc_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_FoundOrc_03_05");
    AI_RESETFACEANI(SELF);
}

instance DIA_BERMAR_QM303_SEARCH(C_INFO) {
    NPC = 56202;
    NR = 1;
    CONDITION = DIA_BERMAR_QM303_SEARCH_CONDITION;
    INFORMATION = DIA_BERMAR_QM303_SEARCH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you been visited by two guards recently?";
}

func int DIA_BERMAR_QM303_SEARCH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_QM303_SEARCH_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_QM303_Search_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_QM303_Search_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_QM303_Search_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_QM303_Search_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_BERMAR_KQ407_WHATHAPPEND(C_INFO) {
    NPC = 56202;
    NR = 1;
    CONDITION = DIA_BERMAR_KQ407_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_BERMAR_KQ407_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will you tell me what happened?";
}

func int DIA_BERMAR_KQ407_WHATHAPPEND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_FARMERSATMEDIC) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_KQ407_WHATHAPPEND_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_KQ407_WhatHappend_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_KQ407_WhatHappend_03_02");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_KQ407_WhatHappend_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_KQ407_WhatHappend_03_04");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_KQ407_WhatHappend_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_KQ407_WhatHappend_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BERMAR_AMBIENT(C_INFO) {
    NPC = 56202;
    NR = 950;
    CONDITION = DIA_BERMAR_AMBIENT_CONDITION;
    INFORMATION = DIA_BERMAR_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_BERMAR_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 78270)) && (!(NPC_KNOWSINFO(OTHER, 78283)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Ambient_03_06");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Ambient_03_07");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Ambient_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Bermar_Ambient_03_09");
    };
}

instance DIA_BERMAR_SQ125_FINISH(C_INFO) {
    NPC = 56202;
    NR = 1;
    CONDITION = DIA_BERMAR_SQ125_FINISH_CONDITION;
    INFORMATION = DIA_BERMAR_SQ125_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I took care of your son.";
}

func int DIA_BERMAR_SQ125_FINISH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ125)) == (LOG_RUNNING)) {
        if (((SQ125_HELPINGKYLE) == (2)) || ((SQ125_HELPINGKYLE_WAY) == (3))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_SQ125_FINISH_INFO() {
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Finish_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_03_02");
    INFO_CLEARCHOICES(78289);
    if ((SQ125_HELPINGKYLE_WAY) == (3)) {
        INFO_ADDCHOICE(78289, "I showed him it wasn't worth the risk...", 78293);
    };
    INFO_ADDCHOICE(78289, "I taught him a thing or two about climbing.", 78292);
    SQ125_SPAWNMONSTERS();
}

func void DIA_BERMAR_SQ125_FINISH_CLIMB() {
    SQ125_REMOVEMOVERS();
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Finish_Climb_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_Climb_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_Climb_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_Climb_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ125, LOG_SQ125_FINISH_V1);
    LOG_SETSTATUS(_@(MIS_SQ125), TOPIC_SQ125, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ125_FINISH_V1);
    CREATEINVITEMS(SELF, 34203, SQ125_REWARD_V1);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ125_REWARD_V1);
    CREATEINVITEMS(SELF, 35847, 1);
    B_GIVEINVITEMS(SELF, OTHER, 35847, 1);
}

func void DIA_BERMAR_SQ125_FINISH_LEAVE() {
    B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_TIRED");
    NPC_REFRESH(BAU_6342_KYLE);
    TELEPORTNPCTOWP(56182, BAU_6342_KYLE.WP);
    AI_OUTPUT(OTHER, SELF, "DIA_Bermar_SQ125_Finish_Leave_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_Leave_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bermar_SQ125_Finish_Leave_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ125, LOG_SQ125_FINISH_V2);
    LOG_SETSTATUS(_@(MIS_SQ125), TOPIC_SQ125, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ125_FINISH_V2);
    CREATEINVITEMS(SELF, 34203, SQ125_REWARD_V2);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ125_REWARD_V2);
}

instance DIA_BERMAR_PICKPOCKET(C_INFO) {
    NPC = 56202;
    NR = 900;
    CONDITION = DIA_BERMAR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BERMAR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_BERMAR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERMAR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78294);
    INFO_ADDCHOICE(78294, DIALOG_BACK, 78298);
    INFO_ADDCHOICE(78294, DIALOG_PICKPOCKET, 78297);
}

func void DIA_BERMAR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 34735, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34735, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78294);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78294);
}

func void DIA_BERMAR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78294);
}

