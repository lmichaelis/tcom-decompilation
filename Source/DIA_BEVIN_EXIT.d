instance DIA_BEVIN_EXIT(C_INFO) {
    NPC = 56300;
    NR = 999;
    CONDITION = DIA_BEVIN_EXIT_CONDITION;
    INFORMATION = DIA_BEVIN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BEVIN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BEVIN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BEVIN_CANHELP(C_INFO) {
    NPC = 56300;
    NR = 1;
    CONDITION = DIA_BEVIN_CANHELP_CONDITION;
    INFORMATION = DIA_BEVIN_CANHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is there anything I can help you with?";
}

func int DIA_BEVIN_CANHELP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78744)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_CANHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_CanHelp_15_01");
    if ((OTHER.ATTRIBUTE[4]) >= (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_CanHelp_03_10");
    INFO_CLEARCHOICES(78728);
    INFO_ADDCHOICE(78728, "A bear? Are you crazy?", 78731);
    INFO_ADDCHOICE(78728, "A jar of honey for getting rid of a bear?", 78732);
    INFO_ADDCHOICE(78728, "A bear is no problem for me.", 78733);
}

func void DIA_BEVIN_SQ114_BEAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_Bear_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_Bear_03_02");
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_Bear_03_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_Bear_03_04");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_BEVIN_SQ114_HONEY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_Honey_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_Honey_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_Honey_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_Honey_03_04");
    SQ114_BETTERREWARD = TRUE;
}

func void DIA_BEVIN_SQ114_LOADEDFORBEAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_LoadedForBear_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_LoadedForBear_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_LoadedForBear_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_LoadedForBear_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_LoadedForBear_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_LoadedForBear_15_06");
    LOG_CREATETOPIC(TOPIC_SQ114, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ114), TOPIC_SQ114, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ114, LOG_SQ114_GLUTTONOUSBEAR);
    BEAR_SQ114.NAME[0] = NAME_GLUTTONOUSBEAR;
    BEAR_SQ114.AIVAR[79] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_BEVIN_SQ114_REALENDING() {
    CREATEINVITEMS(SELF, 36397, 1);
    if ((SQ114_BETTERREWARD) == (TRUE)) {
        CREATEINVITEMS(SELF, 33980, 5);
        B_GIVEINVITEMS(SELF, OTHER, 33980, 5);
    };
    if ((SQ114_ENDING) == (2)) {
    };
    B_GIVEINVITEMS(SELF, OTHER, 36397, 1);
    CREATEINVITEMS(SELF, 33980, 5);
    if ((SQ114_ENDING) == (1)) {
        AI_LOGENTRY(TOPIC_SQ114, LOG_SQ114_ENDINGV1);
        B_GIVEPLAYERXP(XP_SQ114_TIERV1);
    };
    if ((SQ114_ENDING) == (2)) {
        AI_LOGENTRY(TOPIC_SQ114, LOG_SQ114_ENDINGV2);
        B_GIVEPLAYERXP(XP_SQ114_TIERV2);
    };
    if ((SQ114_ENDING) == (3)) {
        AI_LOGENTRY(TOPIC_SQ114, LOG_SQ114_ENDINGV3);
        B_GIVEPLAYERXP(XP_SQ114_TIERV3);
    };
    if ((SQ114_ENDING) == (4)) {
        AI_LOGENTRY(TOPIC_SQ114, LOG_SQ114_ENDINGV4);
        B_GIVEPLAYERXP(XP_SQ114_TIERV4);
    };
    B_GIVEINVITEMS(SELF, OTHER, 33980, 5);
    LOG_SETSTATUS(_@(MIS_SQ114), TOPIC_SQ114, LOG_SUCCESS);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BEVIN_SQ114_DEADBEAR(C_INFO) {
    NPC = 56300;
    NR = 4;
    CONDITION = DIA_BEVIN_SQ114_DEADBEAR_CONDITION;
    INFORMATION = DIA_BEVIN_SQ114_DEADBEAR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Your bear is dead.";
}

func int DIA_BEVIN_SQ114_DEADBEAR_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ114)) == (LOG_RUNNING)) {
        if (((((NPC_HASITEMS(HERO, 35326)) >= (1)) || ((NPC_HASITEMS(HERO, 35327)) >= (1))) || ((NPC_HASITEMS(HERO, 35328)) >= (1))) || ((SQ114_BEARISDEAD) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_SQ114_DEADBEAR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_DeadBear_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_DeadBear_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_DeadBear_03_09");
    INFO_CLEARCHOICES(78735);
    INFO_ADDCHOICE(78735, DIALOG_BACK, 78738);
    if ((SQ114_BEARISDEAD) == (TRUE)) {
        INFO_ADDCHOICE(78735, "You can walk to the grove yourself and see his carcass.", 78739);
    };
    if ((((NPC_HASITEMS(HERO, 35326)) >= (1)) || ((NPC_HASITEMS(HERO, 35327)) >= (1))) || ((NPC_HASITEMS(HERO, 35328)) >= (1))) {
        INFO_ADDCHOICE(78735, "(Show the skin of another bear)", 78740);
    };
    if ((NPC_HASITEMS(HERO, 35329)) >= (1)) {
        INFO_ADDCHOICE(78735, "(Show the skin of another bear)", 78740);
    };
}

func void DIA_BEVIN_SQ114_DEADBEAR_BACK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_DeadBear_Back_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_DeadBear_Back_03_01");
    INFO_CLEARCHOICES(78735);
}

func void DIA_BEVIN_SQ114_BEARISDEAD_NOEVIDENCE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_SQ114_BearIsDead_NoEvidence_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_BearIsDead_NoEvidence_03_02");
    SQ114_ENDING = 2;
    DIA_BEVIN_SQ114_REALENDING();
}

func void DIA_BEVIN_SQ114_BEARISDEAD_FUR() {
    if ((NPC_HASITEMS(HERO, 35329)) >= (1)) {
        NPC_REMOVEINVITEM(SELF, 35329);
        SQ114_ENDING = 4;
    };
    if ((NPC_HASITEMS(HERO, 35326)) >= (1)) {
    };
    if ((NPC_HASITEMS(HERO, 35327)) >= (1)) {
    };
    if ((NPC_HASITEMS(HERO, 35328)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35328, 1);
        NPC_REMOVEINVITEM(SELF, 35328);
    };
    if ((SQ114_BEARISDEAD) == (TRUE)) {
        SQ114_ENDING = 3;
    };
    SQ114_ENDING = 1;
    SQ114_ENDING_DAY = WLD_GETDAY();
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_SQ114_BearIsDead_Fur_03_03");
    DIA_BEVIN_SQ114_REALENDING();
}

instance DIA_BEVIN_Q505_HELP(C_INFO) {
    NPC = 56300;
    NR = 1;
    CONDITION = DIA_BEVIN_Q505_HELP_CONDITION;
    INFORMATION = DIA_BEVIN_Q505_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You once mentioned that honey preserves food well.";
}

func int DIA_BEVIN_Q505_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80244))) {
        if (((LOG_GETSTATUS(MIS_SQ114)) == (LOG_SUCCESS)) && ((SQ114_ENDING) >= (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_Q505_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_Q505_Help_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Q505_Help_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Bevin_Q505_Help_15_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Q505_Help_03_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Q505_Help_03_05");
    CREATEINVITEMS(SELF, 37575, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37575, 1);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_BEVIN_HELLO(C_INFO) {
    NPC = 56300;
    NR = 1;
    CONDITION = DIA_BEVIN_HELLO_CONDITION;
    INFORMATION = DIA_BEVIN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_BEVIN_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_BEVIN_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Hello_03_01");
}

instance DIA_BEVIN_AMBIENT(C_INFO) {
    NPC = 56300;
    NR = 990;
    CONDITION = DIA_BEVIN_AMBIENT_CONDITION;
    INFORMATION = DIA_BEVIN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are things going?";
}

func int DIA_BEVIN_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 78744))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew3");
    if (((LOG_GETSTATUS(MIS_SQ114)) != (LOG_SUCCESS)) && ((KAPITEL) < (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_SQ114)) == (LOG_SUCCESS)) && ((KAPITEL) < (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bevin_Ambient_03_03");
    };
}

instance DIA_BEVIN_PICKPOCKET(C_INFO) {
    NPC = 56300;
    NR = 900;
    CONDITION = DIA_BEVIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BEVIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_BEVIN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78750);
    INFO_ADDCHOICE(78750, DIALOG_BACK, 78754);
    INFO_ADDCHOICE(78750, DIALOG_PICKPOCKET, 78753);
}

func void DIA_BEVIN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 33980, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33980, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78750);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78750);
}

func void DIA_BEVIN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78750);
}

instance DIA_BEVIN_TRADE(C_INFO) {
    NPC = 56300;
    NR = 899;
    CONDITION = DIA_BEVIN_TRADE_CONDITION;
    INFORMATION = DIA_BEVIN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's deal.";
}

func int DIA_BEVIN_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78744)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEVIN_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
}

