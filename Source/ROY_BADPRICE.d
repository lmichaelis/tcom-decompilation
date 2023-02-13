var int ROY_BADPRICE;
var int ROY_BOUGHTARMOR;
instance DIA_ROY_EXIT(C_INFO) {
    NPC = 55936;
    NR = 999;
    CONDITION = DIA_ROY_EXIT_CONDITION;
    INFORMATION = DIA_ROY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ROY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ROY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ROY_WHO(C_INFO) {
    NPC = 55936;
    NR = 1;
    CONDITION = DIA_ROY_WHO_CONDITION;
    INFORMATION = DIA_ROY_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_ROY_WHO_CONDITION() {
    return TRUE;
}

func void DIA_ROY_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_WHO_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_WHO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_WHO_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_WHO_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_WHO_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_WHO_03_06");
}

instance DIA_ROY_WHAT(C_INFO) {
    NPC = 55936;
    NR = 10;
    CONDITION = DIA_ROY_WHAT_CONDITION;
    INFORMATION = DIA_ROY_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_ROY_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78055)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_What_03_02");
    INFO_CLEARCHOICES(78058);
    INFO_ADDCHOICE(78058, "Are you a member of the Merchant's Guild?", 78061);
}

func void DIA_ROY_WHAT_ARAXOS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_What_Araxos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_What_Araxos_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_What_Araxos_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_What_Araxos_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_What_Araxos_03_05");
    INFO_CLEARCHOICES(78058);
    LOG_CREATETOPIC(TOPIC_OTHERTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_OTHERTRADER, LOG_TRADER_ROY);
}

instance DIA_ROY_Q208_MILITIA(C_INFO) {
    NPC = 55936;
    NR = 1;
    CONDITION = DIA_ROY_Q208_MILITIA_CONDITION;
    INFORMATION = DIA_ROY_Q208_MILITIA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Yannick said you had a problem with the guards.";
}

func int DIA_ROY_Q208_MILITIA_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING)) && ((Q208_MILITIABEACH) == (2))) && ((Q208_MILITIAFINISHWAY) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_Q208_MILITIA_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_15_01");
    B_STANDUP();
    AI_PLAYANI(SELF, T_SEARCH);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_03_06");
    INFO_CLEARCHOICES(78062);
    INFO_ADDCHOICE(78062, "And do they have a reason for that?", 78065);
}

func void DIA_ROY_Q208_MILITIA_REASON() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Reason_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Reason_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Reason_03_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Reason_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ROY_Q208_WEED(C_INFO) {
    NPC = 55936;
    NR = 1;
    CONDITION = DIA_ROY_Q208_WEED_CONDITION;
    INFORMATION = DIA_ROY_Q208_WEED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe the guards are looking around for swampweed?";
}

func int DIA_ROY_Q208_WEED_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING)) && ((Q208_WHYMILITIAISHERE) == (TRUE))) && ((Q208_MILITIAFINISHWAY) == (0))) && (NPC_KNOWSINFO(OTHER, 78062))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_Q208_MILITIA_ADDCHOICE() {
    INFO_CLEARCHOICES(78066);
    if ((ROY_BADPRICE) == (TRUE)) {
        INFO_ADDCHOICE(78066, DIALOG_ENDE, 78077);
    };
    if ((Q208_ROYJOINTPACK) == (FALSE)) {
        INFO_ADDCHOICE(78066, "I'll give them the chest and then they'll go away.", 78071);
    };
    INFO_ADDCHOICE(78066, "(Bribe)", 78069);
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY() {
    INFO_CLEARCHOICES(78066);
    INFO_ADDCHOICE(78066, DIALOG_BACK, 78076);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q208_ROYOFFERPRICE_V1)) {
        INFO_ADDCHOICE(78066, "(Offer 25 GP)", 78072);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q208_ROYOFFERPRICE_V2)) {
        INFO_ADDCHOICE(78066, "(Offer 50 GP)", 78074);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q208_ROYOFFERPRICE_V3)) {
        INFO_ADDCHOICE(78066, "(Offer 100 GP)", 78075);
    };
}

func void DIA_ROY_Q208_WEED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Joint_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Joint_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Joint_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Joint_03_04");
    DIA_ROY_Q208_MILITIA_ADDCHOICE();
}

func void DIA_ROY_Q208_MILITIA_JOINT_HELP() {
    ROY_BADPRICE = FALSE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Help_03_03");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_ROY_NOINFO);
    AI_FUNCTION(SELF, 62289);
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_50() {
    ROY_BADPRICE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_50_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_ROY_Q208_MILITIA_JOINT_MONEY();
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_GOODPRICE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_200_03_02");
    B_STANDUP();
    B_USEFAKEBAG();
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_200_03_03");
    INFO_CLEARCHOICES(78066);
    INFO_ADDCHOICE(78066, "Now tell me where you're hiding that chest.", 78078);
    INFO_CLEARCHOICES(78079);
    INFO_ADDCHOICE(78079, "Now tell me where you're hiding that chest.", 78078);
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_100() {
    ROY_BADPRICE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_100_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q208_ROYOFFERPRICE_V2);
    DIA_ROY_Q208_MILITIA_JOINT_MONEY_GOODPRICE();
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_200() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_200_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q208_ROYOFFERPRICE_V3);
    DIA_ROY_Q208_MILITIA_JOINT_MONEY_GOODPRICE();
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_BACK() {
    DIA_ROY_Q208_MILITIA_ADDCHOICE();
}

func void DIA_ROY_Q208_MILITIA_JOINT_END() {
    INFO_CLEARCHOICES(78066);
}

func void DIA_ROY_Q208_MILITIA_JOINT_MONEY_200_PACKET() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Packet_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Packet_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Q208_Militia_Packet_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Q208_Militia_Packet_03_04");
    AI_LOGENTRY(TOPIC_GQ001, LOG_Q208_ROY_PAY);
    INFO_CLEARCHOICES(78066);
    INFO_CLEARCHOICES(78079);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

instance DIA_ROY_FINALMONEY(C_INFO) {
    NPC = 55936;
    NR = 10;
    CONDITION = DIA_ROY_FINALMONEY_CONDITION;
    INFORMATION = DIA_ROY_FINALMONEY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "This is my last offer. (100 GP)";
}

func int DIA_ROY_FINALMONEY_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 78062)) && ((ROY_BADPRICE) == (TRUE))) && ((Q208_MILITIAFINISHWAY) == (0))) && ((NPC_HASITEMS(OTHER, 34203)) >= (Q208_ROYOFFERPRICE_V3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_FINALMONEY_INFO() {
    DIA_ROY_Q208_MILITIA_JOINT_MONEY_200();
}

instance DIA_ROY_TRADE(C_INFO) {
    NPC = 55936;
    NR = 900;
    CONDITION = DIA_ROY_TRADE_CONDITION;
    INFORMATION = DIA_ROY_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "What can I buy from you?";
}

func int DIA_ROY_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78058)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Trade_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Roy_Trade_03_02");
    B_GIVETRADEINV(SELF);
}

instance DIA_ROY_ARMOR(C_INFO) {
    NPC = 55936;
    NR = 901;
    CONDITION = DIA_ROY_ARMOR_CONDITION;
    INFORMATION = DIA_ROY_ARMOR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BUYARMOR;
}

func int DIA_ROY_ARMOR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78058)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_ARMOR_INFO() {
    INFO_CLEARCHOICES(78085);
    INFO_ADDCHOICE(78085, TXT_ARMORTRADE_01, 78088);
    INFO_ADDCHOICE(78085, TXT_ARMORTRADE_25, 78089);
    INFO_ADDCHOICE(78085, TXT_ARMORTRADE_38, 78090);
    INFO_ADDCHOICE(78085, TXT_ARMORTRADE_37, 78091);
    INFO_ADDCHOICE(78085, DIALOG_BACK, 78092);
}

func void DIA_ROY_ARMOR_ITAR_KM_LEATHER_L() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KM_LEATHER_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        CREATEINVITEMS(SELF, 35414, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35414, 1);
        AI_EQUIPARMOR(OTHER, 35414);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        DIA_ROY_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ROY_ARMOR_INFO();
}

func void DIA_ROY_ARMOR_ITAR_KM_LEATHER_M() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KM_LEATHER_M)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KM_LEATHER_M);
        CREATEINVITEMS(SELF, 35417, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35417, 1);
        AI_EQUIPARMOR(OTHER, 35417);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KM_LEATHER_M);
        DIA_ROY_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ROY_ARMOR_INFO();
}

func void DIA_ROY_ARMOR_ITAR_SAILOR_02() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_VLK_SLUMS)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_VLK_SLUMS);
        CREATEINVITEMS(SELF, 35395, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35395, 1);
        AI_EQUIPARMOR(OTHER, 35395);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_VLK_SLUMS);
        DIA_ROY_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ROY_ARMOR_INFO();
}

func void DIA_ROY_ARMOR_ITAR_SAILOR_01() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_VLK_SLUMS)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_VLK_SLUMS);
        CREATEINVITEMS(SELF, 35394, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35394, 1);
        AI_EQUIPARMOR(OTHER, 35394);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_VLK_SLUMS);
        DIA_ROY_ARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ROY_ARMOR_INFO();
}

func void DIA_ROY_ARMOR_BACK() {
    INFO_CLEARCHOICES(78085);
}

instance DIA_ROY_AMBIENT(C_INFO) {
    NPC = 55936;
    NR = 950;
    CONDITION = DIA_ROY_AMBIENT_CONDITION;
    INFORMATION = DIA_ROY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_ROY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78055)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Roy_Ambient_15_01");
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Roy_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Roy_Ambient_03_02");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_ROY_PICKPOCKET(C_INFO) {
    NPC = 55936;
    NR = 900;
    CONDITION = DIA_ROY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ROY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_ROY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ROY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78096);
    INFO_ADDCHOICE(78096, DIALOG_BACK, 78100);
    INFO_ADDCHOICE(78096, DIALOG_PICKPOCKET, 78099);
}

func void DIA_ROY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78096);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78096);
}

func void DIA_ROY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78096);
}

