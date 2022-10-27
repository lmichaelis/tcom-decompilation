instance DIA_IVAN_EXIT(C_INFO) {
    NPC = 0xe521;
    NR = 999;
    CONDITION = DIA_IVAN_EXIT_CONDITION;
    INFORMATION = DIA_IVAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_IVAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_IVAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_IVAN_HELLO(C_INFO) {
    NPC = 0xe521;
    NR = 1;
    CONDITION = DIA_IVAN_HELLO_CONDITION;
    INFORMATION = DIA_IVAN_HELLO_INFO;
    IMPORTANT = TRUE;
}

func int DIA_IVAN_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((SELF.AIVAR[5]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int IVAN_TRADE_CHECKINFO = 0;
func void DIA_IVAN_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Hello_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Hello_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Hello_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Hello_13_03");
    if ((IVAN_TRADE_CHECKINFO) == (FALSE)) {
        IVAN_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_HAVENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_HAVENTRADER, LOG_TRADER_IVAN);
    };
}

instance DIA_IVAN_GETHERE(C_INFO) {
    NPC = 0xe521;
    NR = 1;
    CONDITION = DIA_IVAN_GETHERE_CONDITION;
    INFORMATION = DIA_IVAN_GETHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How did you get here?";
}

func int DIA_IVAN_GETHERE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x147b0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_GETHERE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Gethere_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Gethere_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Gethere_13_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Gethere_13_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Gethere_13_08");
}

instance DIA_IVAN_RAREDISCOVER(C_INFO) {
    NPC = 0xe521;
    NR = 2;
    CONDITION = DIA_IVAN_RAREDISCOVER_CONDITION;
    INFORMATION = DIA_IVAN_RAREDISCOVER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is it really that rare for someone to come here?";
}

func int DIA_IVAN_RAREDISCOVER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x147b0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_RAREDISCOVER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Rarediscover_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Rarediscover_13_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Rarediscover_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Rarediscover_13_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Rarediscover_13_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Rarediscover_13_17");
}

instance DIA_IVAN_PLACE(C_INFO) {
    NPC = 0xe521;
    NR = 3;
    CONDITION = DIA_IVAN_PLACE_CONDITION;
    INFORMATION = DIA_IVAN_PLACE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you tell me something about this place?";
}

func int DIA_IVAN_PLACE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x147b0)) && ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_PLACE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Place_15_19");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_13_20");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_13_21");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_13_22");
    INFO_CLEARCHOICES(0x147ba);
    INFO_ADDCHOICE(0x147ba, "I'm jealous.", 0x147bd);
    if ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) == (FALSE)) {
        INFO_ADDCHOICE(0x147ba, "Aren't you afraid that one day the guards will get you?", 0x147be);
    };
}

func void DIA_IVAN_PLACE_JEALOUS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Place_Jealous_15_23");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_Jealous_13_24");
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Place_Jealous_15_25");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_Jealous_13_26");
    INFO_CLEARCHOICES(0x147ba);
}

func void DIA_IVAN_PLACE_AFRAID() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Place_Afraid_15_27");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Place_Afraid_13_28");
    INFO_CLEARCHOICES(0x147ba);
}

instance DIA_IVAN_SMOKE(C_INFO) {
    NPC = 0xe521;
    NR = 4;
    CONDITION = DIA_IVAN_SMOKE_CONDITION;
    INFORMATION = DIA_IVAN_SMOKE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you smoking in there?";
}

func int DIA_IVAN_SMOKE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x147b0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_SMOKE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Smoke_15_29");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Smoke_13_30");
    INFO_CLEARCHOICES(0x147bf);
    INFO_ADDCHOICE(0x147bf, "Why not?", 0x147c2);
    INFO_ADDCHOICE(0x147bf, "No, thanks.", 0x147c3);
}

func void DIA_IVAN_SMOKE_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Smoke_Yes_15_31");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Smoke_Yes_13_32");
    CREATEINVITEMS(OTHER, 0x8592, 1);
    B_USEITEM(OTHER, 0x8592);
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Smoke_Yes_15_33");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Smoke_Yes_13_34");
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Smoke_Yes_15_35");
    INFO_CLEARCHOICES(0x147bf);
}

func void DIA_IVAN_SMOKE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_Smoke_No_15_36");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Smoke_No_13_37");
    INFO_CLEARCHOICES(0x147bf);
}

instance DIA_IVAN_AMBIENT(C_INFO) {
    NPC = 0xe521;
    NR = 998;
    CONDITION = DIA_IVAN_AMBIENT_CONDITION;
    INFORMATION = DIA_IVAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_IVAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x147ba)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((Q306_TOURNAMENTSTATUS) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Ambient_13_01");
    };
    if ((Q306_TOURNAMENTSTATUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Ambient_13_02");
    };
    if ((Q306_TOURNAMENTSTATUS) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Ambient_13_03");
    };
}

instance DIA_IVAN_SQ316_INFO(C_INFO) {
    NPC = 0xe521;
    NR = 1;
    CONDITION = DIA_IVAN_SQ316_INFO_CONDITION;
    INFORMATION = DIA_IVAN_SQ316_INFO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Apparently you know something about the cave girl.";
}

func int DIA_IVAN_SQ316_INFO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14955)) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_SQ316_INFO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_SQ316_Info_15_01");
    MDL_STARTFACEANI(SELF, S_SERIOUS, 0x3f800000, -1082130432);
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Ivan_SQ316_Info_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_SQ316_Info_03_08");
    AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_IVANINFO);
}

instance DIA_IVAN_Q306_REWARD(C_INFO) {
    NPC = 0xe521;
    NR = 1;
    CONDITION = DIA_IVAN_Q306_REWARD_CONDITION;
    INFORMATION = DIA_IVAN_Q306_REWARD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_IVAN_Q306_REWARD_CONDITION() {
    if ((((Q306_TOURNAMENTSTATUS) == (1)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_Q306_REWARD_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Q306_Reward_03_01");
    CREATEINVITEMS(SELF, 0x85a2, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x85a2, 1);
    CREATEINVITEMS(SELF, 0x8592, 4);
    B_GIVEINVITEMS(SELF, OTHER, 0x8592, 4);
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_IVAN_Q306_AFTERTOURNAMENT(C_INFO) {
    NPC = 0xe521;
    NR = 1;
    CONDITION = DIA_IVAN_Q306_AFTERTOURNAMENT_CONDITION;
    INFORMATION = DIA_IVAN_Q306_AFTERTOURNAMENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_IVAN_Q306_AFTERTOURNAMENT_CONDITION() {
    if (((Q306_TOURNAMENTSTATUS) == (2)) || (((Q306_TOURNAMENTSTATUS) == (1)) && (NPC_KNOWSINFO(OTHER, 0x147ca)))) {
        if (((NPC_ISINSTATE(SELF, 0xf09f)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_Q306_AFTERTOURNAMENT_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ivan_Q306_AfterTournament_03_01");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    if (NPC_KNOWSINFO(OTHER, 0x14955)) {
        if ((RESERVED_VAR_INT_22) == (FALSE)) {
            RESERVED_VAR_INT_22 = TRUE;
            AI_LOGENTRY(TOPIC_SQ316, RESERVED_CONST_STRING_71);
        };
    };
}

instance DIA_IVAN_TRADE(C_INFO) {
    NPC = 0xe521;
    NR = 5;
    CONDITION = DIA_IVAN_TRADE_CONDITION;
    INFORMATION = DIA_IVAN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_IVAN_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x147b0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
    if ((IVAN_TRADE_CHECKINFO) == (FALSE)) {
        IVAN_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_HAVENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_HAVENTRADER, LOG_TRADER_IVAN);
    };
}

instance DIA_IVAN_PICKPOCKET(C_INFO) {
    NPC = 0xe521;
    NR = 900;
    CONDITION = DIA_IVAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_IVAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_IVAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IVAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x147d3);
    INFO_ADDCHOICE(0x147d3, DIALOG_BACK, 0x147d7);
    INFO_ADDCHOICE(0x147d3, DIALOG_PICKPOCKET, 0x147d6);
}

func void DIA_IVAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x8592, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8592, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x147d3);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x147d3);
}

func void DIA_IVAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x147d3);
}

