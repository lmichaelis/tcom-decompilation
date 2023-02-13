var int SQ202_ANGRYVEIT;
instance DIA_VEIT_EXIT(C_INFO) {
    NPC = 57682;
    NR = 999;
    CONDITION = DIA_VEIT_EXIT_CONDITION;
    INFORMATION = DIA_VEIT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VEIT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VEIT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VEIT_HELLO(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_HELLO_CONDITION;
    INFORMATION = DIA_VEIT_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_VEIT_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_VEIT_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_13_04");
    LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_VEIT);
}

instance DIA_VEIT_CANIHELP(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_CANIHELP_CONDITION;
    INFORMATION = DIA_VEIT_CANIHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I help you with something?";
}

func int DIA_VEIT_CANIHELP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 89616)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_CANIHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_13_10");
    INFO_CLEARCHOICES(89619);
    INFO_ADDCHOICE(89619, "It's none of my business.", 89626);
    INFO_ADDCHOICE(89619, "What was the farmer's name?", 89622);
}

func void DIA_VEIT_CANIHELP_NAME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_name_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_name_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_13_03");
    INFO_ADDCHOICE(89619, "I'll help you.", 89624);
}

func void DIA_VEIT_CANIHELP_STARTQUEST() {
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_help_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_name_help_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_help_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_help_13_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_name_help_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_name_help_13_07");
    LOG_CREATETOPIC(TOPIC_SQ107, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ107), TOPIC_SQ107, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ107, LOG_SQ107_START);
    INFO_CLEARCHOICES(89619);
}

func void DIA_VEIT_CANIHELP_NAME_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_name_help_15_00");
    DIA_VEIT_CANIHELP_STARTQUEST();
}

var int VEIT_SQ107_TAKEQUEST;
func void DIA_VEIT_CANIHELP_SORRY() {
    VEIT_SQ107_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_CanIhelp_sorry_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_sorry_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_CanIhelp_sorry_13_02");
    INFO_CLEARCHOICES(89619);
}

instance DIA_VEIT_SQ107_TAKEQUEST(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_SQ107_TAKEQUEST_CONDITION;
    INFORMATION = DIA_VEIT_SQ107_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I've thought it over. I'll help you after all.";
}

func int DIA_VEIT_SQ107_TAKEQUEST_CONDITION() {
    if ((VEIT_SQ107_TAKEQUEST) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_SQ107_TAKEQUEST_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_QuestChangeMyMind3");
    DIA_VEIT_CANIHELP_STARTQUEST();
}

instance DIA_VEIT_IGOTYOURPAPER(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_IGOTYOURPAPER_CONDITION;
    INFORMATION = DIA_VEIT_IGOTYOURPAPER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I've got your pass!";
}

func int DIA_VEIT_IGOTYOURPAPER_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 37030)) >= (1)) && ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_IGOTYOURPAPER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_Igotyourpaper_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Igotyourpaper_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Igotyourpaper_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Igotyourpaper_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Igotyourpaper_13_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_Igotyourpaper_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_Igotyourpaper_13_07");
    LOG_SETSTATUS(_@(MIS_SQ107), TOPIC_SQ107, LOG_SUCCESS);
    GIVEREPUTATION_SILBACH();
    AI_LOGENTRY(TOPIC_SQ107, LOG_SQ107_END);
    B_GIVEPLAYERXP(XP_SQ107_FINISH);
    NPC_REMOVEINVITEMS(SELF, 37030, 1);
    CREATEINVITEMS(SELF, 34203, SQ107_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ107_REWARD);
}

instance DIA_VEIT_SQ227_HELP(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_SQ227_HELP_CONDITION;
    INFORMATION = DIA_VEIT_SQ227_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you need an associate?";
}

func int DIA_VEIT_SQ227_HELP_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_SQ227_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_Help_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_Help_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_Help_15_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_Help_03_04");
}

instance DIA_VEIT_SQ227_EZEKIEL(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_SQ227_EZEKIEL_CONDITION;
    INFORMATION = DIA_VEIT_SQ227_EZEKIEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Perhaps Ezekiel could replace you here?";
}

func int DIA_VEIT_SQ227_EZEKIEL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ227)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 89633))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_SQ227_EZEKIEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_Ezekiel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_Ezekiel_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_Ezekiel_03_03");
    AI_LOGENTRY(TOPIC_SQ227, LOG_SQ227_VEIT_HELP);
}

instance DIA_VEIT_SQ227_BUYLIST(C_INFO) {
    NPC = 57682;
    NR = 900;
    CONDITION = DIA_VEIT_SQ227_BUYLIST_CONDITION;
    INFORMATION = DIA_VEIT_SQ227_BUYLIST_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How much do you want for your contacts?";
}

func int DIA_VEIT_SQ227_BUYLIST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 89636)) && ((SQ227_BOUGHTVEITLIST) == (FALSE))) {
        if (((LOG_GETSTATUS(MIS_SQ227)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_SUCCESS))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int VEIT_SQ227_BUYLIST_MANY;
func void DIA_VEIT_SQ227_BUYLIST_CHOICES() {
    INFO_CLEARCHOICES(89639);
    INFO_ADDCHOICE(89639, "Thank you for now.", 89647);
    if ((VEIT_SQ227_BUYLIST_MANY) == (FALSE)) {
        INFO_ADDCHOICE(89639, "That's a bit much.", 89646);
    };
    if ((SQ227_BOUGHTVEITLIST) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_SUCCESS)) {
            INFO_ADDCHOICE(89639, "(Pay 250 GP for contacts)", 89645);
        } else {
            INFO_ADDCHOICE(89639, "(Pay 450 GP for contacts)", 89645);
        };
    };
}

func void DIA_VEIT_SQ227_BUYLIST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_BuyList_15_01");
    if ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_03_03");
    DIA_VEIT_SQ227_BUYLIST_CHOICES();
}

func void DIA_VEIT_SQ227_BUYLIST_GIVELIST() {
    SQ227_BOUGHTVEITLIST = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_1200_03_02");
    INFO_CLEARCHOICES(89639);
}

func void DIA_VEIT_SQ227_BUYLIST_GET() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_BuyList_1200_15_01");
    if ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_SUCCESS)) {
        if ((NPC_HASITEMS(OTHER, 34203)) >= (SQ227_VEITLIST_V2)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, SQ227_VEITLIST_V2);
            DIA_VEIT_SQ227_BUYLIST_GIVELIST();
        } else {
            B_SAY(SELF, OTHER, "$NOGOLD");
            DIA_VEIT_SQ227_BUYLIST_CHOICES();
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (SQ227_VEITLIST_V1)) {
        B_GIVEINVITEMS(OTHER, SELF, 34203, SQ227_VEITLIST_V1);
        DIA_VEIT_SQ227_BUYLIST_GIVELIST();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_VEIT_SQ227_BUYLIST_CHOICES();
}

func void DIA_VEIT_SQ227_BUYLIST_MANY() {
    VEIT_SQ227_BUYLIST_MANY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_BuyList_Many_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_Many_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_Many_03_03");
}

func void DIA_VEIT_SQ227_BUYLIST_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_BuyList_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_BuyList_Bye_03_02");
    INFO_CLEARCHOICES(89639);
}

instance DIA_VEIT_SQ227_GOODBYE(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_SQ227_GOODBYE_CONDITION;
    INFORMATION = DIA_VEIT_SQ227_GOODBYE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Ezekiel will replace you in the village.";
}

func int DIA_VEIT_SQ227_GOODBYE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ227)) == (LOG_SUCCESS)) && ((SQ227_VEITMARKET) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_SQ227_GOODBYE_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_SQ227_Goodbye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_SQ227_Goodbye_03_02");
    SQ227_REMOVEVEIT();
}

instance DIA_VEIT_TRADE(C_INFO) {
    NPC = 57682;
    NR = 800;
    CONDITION = DIA_VEIT_TRADE_CONDITION;
    INFORMATION = DIA_VEIT_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_VEIT_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 89616)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int VEIT_TRADENEWSPERMANENT;
func void DIA_VEIT_TRADE_INFO() {
    B_GIVETRADEINV(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Veit_TRADE_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Veit_TRADE_13_01");
}

instance DIA_VEIT_AMBIENT(C_INFO) {
    NPC = 57682;
    NR = 200;
    CONDITION = DIA_VEIT_AMBIENT_CONDITION;
    INFORMATION = DIA_VEIT_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_VEIT_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 89616)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((SQ202_ANGRYVEIT) == (TRUE))) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Veit_Ambient_03_02");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Veit_Ambient_03_03");
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_Ambient_03_04");
    };
    if (((LOG_GETSTATUS(MIS_SQ107)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ107)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_Ambient_03_05");
    };
    if ((LOG_GETSTATUS(MIS_SQ107)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_Ambient_03_06");
    };
}

instance DIA_VEIT_HELLO_CITY(C_INFO) {
    NPC = 57682;
    NR = 1;
    CONDITION = DIA_VEIT_HELLO_CITY_CONDITION;
    INFORMATION = DIA_VEIT_HELLO_CITY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VEIT_HELLO_CITY_CONDITION() {
    if ((SQ227_VEITMARKETAMBIENT) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_HELLO_CITY_INFO() {
    if ((SQ202_ANGRYVEIT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_City_03_00");
    };
    if ((SQ202_ANGRYVEIT) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Veit_Hello_City_03_02");
    };
}

instance DIA_VEIT_ARMOR(C_INFO) {
    NPC = 57682;
    NR = 2;
    CONDITION = DIA_VEIT_ARMOR_CONDITION;
    INFORMATION = DIA_VEIT_ARMOR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BUYARMOR;
}

func int DIA_VEIT_ARMOR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 89616)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_ARMOR_INFO() {
    INFO_CLEARCHOICES(89661);
    INFO_ADDCHOICE(89661, TXT_ARMORTRADE_01, 89667);
    INFO_ADDCHOICE(89661, TXT_ARMORTRADE_34, 89665);
    INFO_ADDCHOICE(89661, TXT_ARMORTRADE_35, 89666);
    INFO_ADDCHOICE(89661, TXT_ARMORTRADE_36, 89668);
    INFO_ADDCHOICE(89661, DIALOG_BACK, 89664);
}

func void DIA_VEIT_ARMOR_BACK() {
    INFO_CLEARCHOICES(89661);
}

func void DIA_VEIT_ARMOR_ITAR_TRV_03() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_TRV)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_TRV);
        CREATEINVITEMS(SELF, 35412, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35412, 1);
        AI_EQUIPARMOR(OTHER, 35412);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_TRV);
        DIA_VEIT_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_VEIT_ARMOR_INFO();
}

func void DIA_VEIT_ARMOR_ITAR_TRV_04() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_TRV)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_TRV);
        CREATEINVITEMS(SELF, 35413, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35413, 1);
        AI_EQUIPARMOR(OTHER, 35413);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_TRV);
        DIA_VEIT_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_VEIT_ARMOR_INFO();
}

func void DIA_VEIT_ARMOR_ITAR_KM_LEATHER_L() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KM_LEATHER_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        CREATEINVITEMS(SELF, 35414, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35414, 1);
        AI_EQUIPARMOR(OTHER, 35414);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        DIA_VEIT_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_VEIT_ARMOR_INFO();
}

func void DIA_VEIT_ARMOR_ITAR_BAU_L_01() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_BAU_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_BAU_L);
        CREATEINVITEMS(SELF, 35571, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35571, 1);
        AI_EQUIPARMOR(OTHER, 35571);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_BAU_L);
        DIA_VEIT_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_VEIT_ARMOR_INFO();
}

instance DIA_VEIT_PICKPOCKET(C_INFO) {
    NPC = 57682;
    NR = 900;
    CONDITION = DIA_VEIT_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VEIT_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_VEIT_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VEIT_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(89669);
    INFO_ADDCHOICE(89669, DIALOG_BACK, 89673);
    INFO_ADDCHOICE(89669, DIALOG_PICKPOCKET, 89672);
}

func void DIA_VEIT_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35985, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35985, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(89669);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(89669);
}

func void DIA_VEIT_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(89669);
}

