var int LORENZOKNOWABOUTJORN = 0;
var int LORENZO_Q206_ELSETODO_DOUBLE = 0;
instance DIA_LORENZO_EXIT(C_INFO) {
    NPC = 0xcb64;
    NR = 999;
    CONDITION = DIA_LORENZO_EXIT_CONDITION;
    INFORMATION = DIA_LORENZO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LORENZO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LORENZO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LORENZO_HELLO(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_HELLO_CONDITION;
    INFORMATION = DIA_LORENZO_HELLO_INFO;
    DESCRIPTION = "Hey, who are you?";
}

func int DIA_LORENZO_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_LORENZO_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Hello_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Hello_14_02");
}

instance DIA_LORENZO_WHOAREYOU(C_INFO) {
    NPC = 0xcb64;
    NR = 2;
    CONDITION = DIA_LORENZO_WHOAREYOU_CONDITION;
    INFORMATION = DIA_LORENZO_WHOAREYOU_INFO;
    DESCRIPTION = "Can you tell me anything about the Merchant's Guild?";
}

func int DIA_LORENZO_WHOAREYOU_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11546)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_WHOAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WhoAreYou_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhoAreYou_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhoAreYou_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhoAreYou_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhoAreYou_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhoAreYou_14_05");
}

instance DIA_LORENZO_NOTTRADERS(C_INFO) {
    NPC = 0xcb64;
    NR = 2;
    CONDITION = DIA_LORENZO_NOTTRADERS_CONDITION;
    INFORMATION = DIA_LORENZO_NOTTRADERS_INFO;
    DESCRIPTION = "I've seen people among you who don't look like merchants to me.";
}

func int DIA_LORENZO_NOTTRADERS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11549)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_NOTTRADERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_NotTraders_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_NotTraders_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_NotTraders_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_NotTraders_14_04");
}

instance DIA_LORENZO_WHATUTRADE(C_INFO) {
    NPC = 0xcb64;
    NR = 3;
    CONDITION = DIA_LORENZO_WHATUTRADE_CONDITION;
    INFORMATION = DIA_LORENZO_WHATUTRADE_INFO;
    DESCRIPTION = "What does your organization trade in?";
}

func int DIA_LORENZO_WHATUTRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11549)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_WHATUTRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WhatUTrade_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhatUTrade_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhatUTrade_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhatUTrade_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WhatUTrade_14_04");
}

instance DIA_LORENZO_PRIVATEARMY(C_INFO) {
    NPC = 0xcb64;
    NR = 4;
    CONDITION = DIA_LORENZO_PRIVATEARMY_CONDITION;
    INFORMATION = DIA_LORENZO_PRIVATEARMY_INFO;
    DESCRIPTION = "What is the governor's opinion of your private army?";
}

func int DIA_LORENZO_PRIVATEARMY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11549)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PRIVATEARMY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_PrivateArmy_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_04");
    if ((OTHER.GUILD) != (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PrivateArmy_14_06");
    };
}

instance DIA_LORENZO_DOYOURECRUIT(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_DOYOURECRUIT_CONDITION;
    INFORMATION = DIA_LORENZO_DOYOURECRUIT_INFO;
    DESCRIPTION = "Are you accepting newcomers into your ranks?";
}

func int DIA_LORENZO_DOYOURECRUIT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11549)) && ((LOG_GETSTATUS(MIS_Q209)) == (LOG_SUCCESS))) {
        if (((HERO.GUILD) != (GIL_MIL)) && ((HERO.GUILD) != (GIL_SLD))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_DOYOURECRUIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_DoYouRecruit_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_DoYouRecruit_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_DoYouRecruit_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_DoYouRecruit_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_DoYouRecruit_14_04");
    if ((LOG_GETSTATUS(MIS_Q204)) != (LOG_RUNNING)) {
        LOG_CREATETOPIC(TOPIC_Q204, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_Q204), TOPIC_Q204, LOG_RUNNING);
    };
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_START);
}

instance DIA_LORENZO_IWANTTOJOIN(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_IWANTTOJOIN_CONDITION;
    INFORMATION = DIA_LORENZO_IWANTTOJOIN_INFO;
    DESCRIPTION = "I would like to join the Guild.";
    PERMANENT = TRUE;
}

var int MARVINTOLDWHYJOIN = 0;
var int LORENZOTOLDABOUTREPUTATION = 0;
var int MARVINSHOWEDCITIZENSHIP = 0;
var int MARVINCANJOINMERCENARIES = 0;
func int DIA_LORENZO_IWANTTOJOIN_CONDITION() {
    if (((KAPITEL) == (2)) && ((LOG_GETSTATUS(MIS_Q209)) == (LOG_SUCCESS))) {
        if (((OTHER.GUILD) == (GIL_NONE)) || ((OTHER.GUILD) == (GIL_VLK))) {
            if ((NPC_KNOWSINFO(OTHER, 0x11555)) && ((MARVINSHOWEDCITIZENSHIP) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_IWANTTOJOIN_INFO() {
    if ((MARVINTOLDWHYJOIN) == (FALSE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_15_00");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_14_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_14_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_14_03");
        INFO_CLEARCHOICES(0x11558);
        INFO_ADDCHOICE(0x11558, "I want to find my missing brother.", 0x11560);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoinMarvinToldWhyJoin_14_01");
    INFO_CLEARCHOICES(0x11558);
    if ((NPC_HASITEMS(OTHER, 0x9112)) >= (1)) {
        INFO_ADDCHOICE(0x11558, "Of course.", 0x11561);
    };
    INFO_ADDCHOICE(0x11558, "Unfortunately, no.", 0x11562);
}

func void LORENZO_Q204_TELLWHY() {
    MARVINTOLDWHYJOIN = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Money_14_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Money_14_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Money_14_10");
    INFO_CLEARCHOICES(0x11558);
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_MARVINWANTSTOJOIN);
    if ((NPC_HASITEMS(OTHER, 0x9112)) >= (1)) {
        INFO_ADDCHOICE(0x11558, "Of course.", 0x11561);
    };
    INFO_ADDCHOICE(0x11558, "Unfortunately, no.", 0x11562);
}

func void DIA_LORENZO_IWANTTOJOIN_BROTHER() {
    LORENZOKNOWABOUTJORN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_Brother_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Brother_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Brother_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Brother_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_Brother_14_04");
    LORENZO_Q204_TELLWHY();
}

func void DIA_LORENZO_IWANTTOJOIN_IAMCITIZEN() {
    LORENZOTOLDABOUTREPUTATION = TRUE;
    MARVINSHOWEDCITIZENSHIP = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_IAmCitizen_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9112, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_03");
    B_GIVEINVITEMS(SELF, OTHER, 0x9112, 1);
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_SHOWEDCITIZENSHIP);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_IAmCitizen_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmCitizen_14_10");
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_REPUTATION);
    INFO_CLEARCHOICES(0x11558);
}

func void DIA_LORENZO_IWANTTOJOIN_IAMNOTCITIZEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_IWantToJoin_IAmNotCitizen_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmNotCitizen_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmNotCitizen_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_IWantToJoin_IAmNotCitizen_14_03");
    INFO_CLEARCHOICES(0x11558);
}

instance DIA_LORENZO_HOWTOIMPROVEREPUTATION(C_INFO) {
    NPC = 0xcb64;
    NR = 2;
    CONDITION = DIA_LORENZO_HOWTOIMPROVEREPUTATION_CONDITION;
    INFORMATION = DIA_LORENZO_HOWTOIMPROVEREPUTATION_INFO;
    DESCRIPTION = "Who exactly should I go to?";
}

func int DIA_LORENZO_HOWTOIMPROVEREPUTATION_CONDITION() {
    if ((((LORENZOTOLDABOUTREPUTATION) == (TRUE)) && ((MARVINCANJOINMERCENARIES) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_15_00");
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_14_04");
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_HOWTOIMPROVEREPUTATION);
    INFO_CLEARCHOICES(0x11563);
    INFO_ADDCHOICE(0x11563, "Thanks, that's good enough for me.", 0x11566);
    INFO_ADDCHOICE(0x11563, "Remind me, where can I find Armar?", 0x1156a);
    INFO_ADDCHOICE(0x11563, "Where can I find Ernesto?", 0x11567);
    INFO_ADDCHOICE(0x11563, "Which inn does Helga work at?", 0x11568);
    INFO_ADDCHOICE(0x11563, "Where can I find Dima?", 0x11569);
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_THATSALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_ThatsAll_15_00");
    INFO_CLEARCHOICES(0x11563);
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_WHEREISERNESTO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_WhereIsErnesto_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_WhereIsErnesto_14_01");
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_WHEREISOLAF() {
    FAQ003_WEKNOWABOUTOLAF = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_WhereIsOlaf_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_WhereIsOlaf_14_01");
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_WHEREISDIMA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_WhereIsDima_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_WhereIsDima_14_01");
}

func void DIA_LORENZO_HOWTOIMPROVEREPUTATION_ARMAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_HowToImproveReputation_Armar_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_HowToImproveReputation_Armar_14_01");
}

instance DIA_LORENZO_REPUTATION(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_REPUTATION_CONDITION;
    INFORMATION = DIA_LORENZO_REPUTATION_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I think I've managed to win over a few Guild members.";
}

func int DIA_LORENZO_REPUTATION_CONDITION() {
    if (((((LORENZOTOLDABOUTREPUTATION) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING))) && ((KAPITEL) == (2))) && ((HERO.GUILD) == (GIL_VLK))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_REPUTATION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_03");
    if ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_SUCCESS)) {
        if ((FAQ002_RESULT) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_04");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_05");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_06");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_07");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_08");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_09");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_10");
        } else if ((FAQ002_RESULT) == (3)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_11");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_12");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_13");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_14");
        } else if ((FAQ002_RESULT) == (4)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_15");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_16");
        };
    };
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_SUCCESS)) {
        if ((FAQ003_MARVINHADHELP) == (FALSE)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_17");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_18");
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_19");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_20");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_21");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_22");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_23");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_24");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_FAILED)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_27");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_28");
    };
    if ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_SUCCESS)) {
        if ((FAQ001_MARVINFOUNDDEADMEESENGER) >= (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_29");
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_30");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_31");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_32");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_33");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_34");
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_35");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_36");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_37");
        };
    };
    if (((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_FAILED))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_38");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_39");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_40");
    };
    if ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_41");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_42");
    };
    if ((Q204_ARAXOSGUILDREPUTATION) >= (Q204_ARAXOSGUILDREPUTATION_REQUIRED)) {
        MARVINCANJOINMERCENARIES = 1;
        LORENZOTOLDABOUTREPUTATION = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_43");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_44");
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Reputation_15_45");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_46");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_47");
        AI_LOGENTRY(TOPIC_Q204, LOG_Q204_MARVINCANJOIN);
    };
    if (((Q204_ARAXOSGUILDREPUTATION) >= (1)) && ((Q204_ARAXOSGUILDREPUTATION) < (Q204_ARAXOSGUILDREPUTATION_REQUIRED))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_48");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_49");
    };
    if ((Q204_ARAXOSGUILDREPUTATION) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_50");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Reputation_03_51");
    };
}

instance DIA_LORENZO_MARVINJOINMERCENARIES(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_MARVINJOINMERCENARIES_CONDITION;
    INFORMATION = DIA_LORENZO_MARVINJOINMERCENARIES_INFO;
    DESCRIPTION = "I'm ready to join you!";
}

func int DIA_LORENZO_MARVINJOINMERCENARIES_CONDITION() {
    if ((((((MARVINCANJOINMERCENARIES) == (1)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING))) && ((KAPITEL) == (2))) && ((HERO.GUILD) == (GIL_VLK))) && ((FMQ003_WEARARMOR) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_MARVINJOINMERCENARIES_INFO() {
    AI_FUNCTION(SELF, 0xfa15);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_MarvinJoinMercenaries_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_02");
    AI_FUNCTION(SELF, 0xfa14);
    ARAXOS_WEKNOWARAXOSTRAINING = TRUE;
    CREATEINVITEMS(SLD_5000_LORENZO, 0x9136, 1);
    B_GIVEINVITEMS(SLD_5000_LORENZO, HERO, 0x9136, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_03");
    AI_LOGENTRY(TOPIC_Q204, LOG_Q204_LORENZOAFTERJOIN);
    Q203_FAILQUESTS();
    B_GIVEPLAYERXP((XP_G204_REPUTATIONCOUNT) * (Q204_ARAXOSGUILDREPUTATION));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_MarvinJoinMercenaries_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MarvinJoinMercenaries_14_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_MarvinJoinMercenaries_15_08");
}

instance DIA_LORENZO_MYDUTYASMERCENARY(C_INFO) {
    NPC = 0xcb64;
    NR = 4;
    CONDITION = DIA_LORENZO_MYDUTYASMERCENARY_CONDITION;
    INFORMATION = DIA_LORENZO_MYDUTYASMERCENARY_INFO;
    DESCRIPTION = "What are the responsibilities of a runner?";
}

func int DIA_LORENZO_MYDUTYASMERCENARY_CONDITION() {
    if ((((OTHER.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) && ((MARVIN_ARAXOSSPECIALIZATION) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_MYDUTYASMERCENARY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_MyDutyAsMercenary_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MyDutyAsMercenary_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MyDutyAsMercenary_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MyDutyAsMercenary_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_MyDutyAsMercenary_14_04");
}

instance DIA_LORENZO_HISTORY(C_INFO) {
    NPC = 0xcb64;
    NR = 4;
    CONDITION = DIA_LORENZO_HISTORY_CONDITION;
    INFORMATION = DIA_LORENZO_HISTORY_INFO;
    DESCRIPTION = "How did you become such an influential person?";
}

func int DIA_LORENZO_HISTORY_CONDITION() {
    if (((OTHER.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_HISTORY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_History_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_History_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_History_14_09");
}

instance DIA_LORENZO_ARCHOLOS(C_INFO) {
    NPC = 0xcb64;
    NR = 4;
    CONDITION = DIA_LORENZO_ARCHOLOS_CONDITION;
    INFORMATION = DIA_LORENZO_ARCHOLOS_INFO;
    DESCRIPTION = "How did you come to Archolos?";
}

func int DIA_LORENZO_ARCHOLOS_CONDITION() {
    if ((((OTHER.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) && (NPC_KNOWSINFO(OTHER, 0x11574))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_ARCHOLOS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Archolos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Archolos_14_08");
}

instance DIA_LORENZO_CQ003(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_CQ003_CONDITION;
    INFORMATION = DIA_LORENZO_CQ003_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can we talk business?";
}

func int DIA_LORENZO_CQ003_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_CQ003)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x8e0c)) >= (1))) && (NPC_KNOWSINFO(OTHER, 0x11546))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_CQ003_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_15_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_15_06");
    B_GIVEINVITEMS(OTHER, SELF, 0x8e0c, 1);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    AI_USEITEM(SELF, 0x8e0c);
    AI_WAITTILLEND(SELF, OTHER);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_03_08");
    INFO_CLEARCHOICES(0x1157a);
    INFO_ADDCHOICE(0x1157a, "I'm sure we can get to some kind of an understanding.", 0x1157d);
    INFO_ADDCHOICE(0x1157a, "With your connections, I'm sure you can come up with something.", 0x1157e);
}

func void DIA_LORENZO_CQ003_APPEASE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Appease_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Appease_03_02");
}

func void DIA_LORENZO_CQ003_THINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Think_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Think_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Think_03_03");
    INFO_CLEARCHOICES(0x1157a);
    INFO_ADDCHOICE(0x1157a, "I don't want to go to jail.", 0x11582);
    INFO_ADDCHOICE(0x1157a, "I'll do whatever it takes.", 0x11581);
    INFO_ADDCHOICE(0x1157a, "It depends.", 0x11580);
}

func void DIA_LORENZO_CQ003_GIVEWINE() {
    CQ003_HAPPYLORENZO = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Maybe_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Maybe_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Maybe_03_04");
    CREATEINVITEMS(SELF, 0x912c, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x912c, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Maybe_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Maybe_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Maybe_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Maybe_03_08");
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_ARAXOS);
    INFO_CLEARCHOICES(0x1157a);
}

func void DIA_LORENZO_CQ003_THINK_MAYBE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Maybe_15_01");
    DIA_LORENZO_CQ003_GIVEWINE();
}

func void DIA_LORENZO_CQ003_THINK_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_Yes_03_02");
    DIA_LORENZO_CQ003_GIVEWINE();
}

func void DIA_LORENZO_CQ003_THINK_NO() {
    CQ003_HAPPYLORENZO = 2;
    CQ003_TALKED = (CQ003_TALKED) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_CQ003_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_CQ003_No_03_02");
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_LORENZOBEERGOOD);
    INFO_CLEARCHOICES(0x1157a);
}

instance DIA_LORENZO_WINEGONE(C_INFO) {
    NPC = 0xcb64;
    NR = 2;
    CONDITION = DIA_LORENZO_WINEGONE_CONDITION;
    INFORMATION = DIA_LORENZO_WINEGONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "It's done. I got rid of that wine.";
}

func int DIA_LORENZO_WINEGONE_CONDITION() {
    if ((CQ003_HAPPYLORENZO) == (4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_WINEGONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGone_03_02");
    CQ003_HAPPYLORENZO_DAY_CHECK = TRUE;
    CQ003_HAPPYLORENZO_DAY = WLD_GETDAY();
}

instance DIA_LORENZO_WINEGONERESULT(C_INFO) {
    NPC = 0xcb64;
    NR = 3;
    CONDITION = DIA_LORENZO_WINEGONERESULT_CONDITION;
    INFORMATION = DIA_LORENZO_WINEGONERESULT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_WINEGONERESULT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if ((CQ003_HAPPYLORENZO) == (4)) {
            if (((CQ003_HAPPYLORENZO_DAY_CHECK) == (TRUE)) && ((CQ003_HAPPYLORENZO_DAY) <= ((WLD_GETDAY()) - (1)))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_WINEGONERESULT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_03_09");
    INFO_CLEARCHOICES(0x11586);
    INFO_ADDCHOICE(0x11586, "We can lower the price a bit. (95 GP)", 0x1158a);
    INFO_ADDCHOICE(0x11586, "Tomas set the price. I won't interfere.", 0x1158b);
}

func void DIA_LORENZO_COOPERATION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_Still90gold_15_03");
}

func void DIA_LORENZO_WINEGONERESULT_95GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_95Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_95Gold_03_02");
    INFO_CLEARCHOICES(0x11586);
    INFO_ADDCHOICE(0x11586, "This is the final price. (85 GP)", 0x1158c);
    INFO_ADDCHOICE(0x11586, "I can't lower it that much. This is the final offer.", 0x1158d);
}

func void DIA_LORENZO_WINEGONERESULT_100GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_100gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_100gold_03_02");
    DIA_LORENZO_COOPERATION();
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_ARAXOS5BOXES);
    INFO_CLEARCHOICES(0x11586);
    CQ003_HAPPYLORENZO = 6;
    CQ003_HAPPYCUSTOMER = (CQ003_HAPPYCUSTOMER) + (5);
    CQ003_TALKED = (CQ003_TALKED) + (1);
}

func void DIA_LORENZO_WINEGONERESULT_95GOLD_85GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_85gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_85gold_03_02");
    DIA_LORENZO_COOPERATION();
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_ARAXOS8BOXES);
    INFO_CLEARCHOICES(0x11586);
    CQ003_HAPPYLORENZO = 5;
    CQ003_HAPPYCUSTOMER = (CQ003_HAPPYCUSTOMER) + (8);
    CQ003_TALKED = (CQ003_TALKED) + (1);
}

func void DIA_LORENZO_WINEGONERESULT_95GOLD_STILL90GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_WineGoneResult_Still90gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_WineGoneResult_Still90gold_03_02");
    DIA_LORENZO_COOPERATION();
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_ARAXOS8BOXES);
    INFO_CLEARCHOICES(0x11586);
    CQ003_HAPPYLORENZO = 1;
    CQ003_HAPPYCUSTOMER = (CQ003_HAPPYCUSTOMER) + (8);
    CQ003_TALKED = (CQ003_TALKED) + (1);
}

func void Q206_START_PREPARECARAMON() {
    Q206_CARAMON_RTNCHECK = 1;
    NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206");
    TELEPORTNPCTOWP(0xcb1c, "PARTM1_Q206_CARAMON_SIT");
}

instance DIA_LORENZO_Q206_START(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_Q206_START_CONDITION;
    INFORMATION = DIA_LORENZO_Q206_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_Q206_START_CONDITION() {
    if ((((HERO.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_Q206_START_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Start_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Start_03_05");
    LOG_CREATETOPIC(TOPIC_Q206, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q206), TOPIC_Q206, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_START);
    AI_RESETFACEANI(SELF);
    Q206_SPAWNFISHERMANS();
    INFO_CLEARCHOICES(0x1158f);
    if ((LORENZOKNOWABOUTJORN) == (FALSE)) {
        INFO_ADDCHOICE(0x1158f, "How do you know about my brother?", 0x11592);
    };
    INFO_ADDCHOICE(0x1158f, "Can you tell me more about these smugglers?", 0x11593);
}

func void DIA_LORENZO_Q206_YOUKNOWJORN() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_YouKnowJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_YouKnowJorn_03_02");
    INFO_CLEARCHOICES(0x1158f);
    INFO_ADDCHOICE(0x1158f, "Can you tell me more about these smugglers?", 0x11593);
    AI_RESETFACEANI(OTHER);
}

func void DIA_LORENZO_Q206_ABOUTSMUGGLERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_AboutSmugglers_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_AboutSmugglers_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_AboutSmugglers_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_AboutSmugglers_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_AboutSmugglers_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_AboutSmugglers_03_06");
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_CARAMONWILLHELP);
    INFO_CLEARCHOICES(0x1158f);
    INFO_ADDCHOICE(0x1158f, "What do I do with them once I find them?", 0x11594);
}

func void DIA_LORENZO_Q206_WHATCANIDOWITHSMUGGLERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_WhatCanIDoWithSmugglers_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_WhatCanIDoWithSmugglers_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_WhatCanIDoWithSmugglers_03_03");
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_KILLTHEM);
    INFO_CLEARCHOICES(0x1158f);
    INFO_ADDCHOICE(0x1158f, DIALOG_ASSOONASPOSSIBLE, 0x11595);
    INFO_ADDCHOICE(0x1158f, "Is there anything else to do?", 0x11598);
}

func void DIA_LORENZO_Q206_READYTOGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_ReadyToGo_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_ReadyToGo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_ReadyToGo_03_03");
    AI_FUNCTION(HERO, 0x1158e);
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LORENZO_Q206_ELSETODO(C_INFO) {
    NPC = 0xcb64;
    NR = 5;
    CONDITION = DIA_LORENZO_Q206_ELSETODO_CONDITION;
    INFORMATION = DIA_LORENZO_Q206_ELSETODO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is there anything else to do?";
}

func int DIA_LORENZO_Q206_ELSETODO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1158f)) {
        if ((LORENZO_Q206_ELSETODO_DOUBLE) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_Q206_ELSETODO_INFO() {
    LORENZO_Q206_ELSETODO_DOUBLE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_ElseToDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_ElseToDo_03_02");
}

instance DIA_LORENZO_Q206_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_Q206_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_Q206_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_Q206_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x112ac))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if (((Q206_CHECKDOORWITHCARAMON) == (2)) || ((Q206_CHECKDOORWITHCARAMON) == (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int LORENZO_Q206_FINISH_FOUND = 0;
var int LORENZO_Q206_FINISH_SMUGGLERS = 0;
var int LORENZO_Q206_FINISH_PABLO = 0;
func void DIA_LORENZO_Q206_FINISH_NEXT2() {
    Q206_AFTERQUEST = 1;
    Q206_AFTERQUEST_DAY = WLD_GETDAY();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Next2_15_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_03");
    AI_PLAYANI(SELF, T_STAND_2_COUNTING);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_06");
    AI_PLAYANI(SELF, T_COUNTING_2_STAND);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next2_03_08");
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_FINISH);
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_NEXTSTEP);
    LOG_SETSTATUS(_@(MIS_Q206), TOPIC_Q206, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q206_FINISH);
    if ((Q206_MARVINISSPY) == (FALSE)) {
        CREATEINVITEMS(SELF, 0x859b, Q206_FINISH_V1);
    };
    CREATEINVITEMS(SELF, 0x859b, Q206_FINISH_V1);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, Q206_FINISH_V2);
    INFO_CLEARCHOICES(0x11599);
    INFO_ADDCHOICE(0x11599, "What about hunters who will help in the search for my brother.", 0x1159f);
    INFO_ADDCHOICE(0x11599, "I heard about a guy who's in the business of making people disappear...", 0x115a0);
    Q206_REMOVENPC();
    Q208_PREPARESCENE();
}

func void DIA_LORENZO_Q206_FINISH_NEXT2_HUNTERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Hunters_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Hunters_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Hunters_03_03");
    B_MARVIN_USEFAKESCROLLSTATE_START();
    AI_WAIT(OTHER, 0x40000000);
    B_MARVIN_USEFAKESCROLLSTATE_END();
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Hunters_03_04");
    INFO_ADDCHOICE(0x11599, DIALOG_ENDE, 0x11545);
}

func void DIA_LORENZO_Q206_FINISH_NEXT2_WILLEM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Willem_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Willem_15_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Willem_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Willem_03_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Willem_03_05");
}

func void DIA_LORENZO_Q206_FINISH_CHOICES() {
    if ((Q206_SPAREPABLO) == (TRUE)) {
        if ((LORENZO_Q206_FINISH_PABLO) == (FALSE)) {
            INFO_ADDCHOICE(0x11599, "I convinced one of the smugglers to switch sides.", 0x115aa);
        };
    };
    if ((LORENZO_Q206_FINISH_SMUGGLERS) == (FALSE)) {
        INFO_ADDCHOICE(0x11599, "We discovered a smuggler's hideout on the Amber Coast.", 0x115a9);
    };
    if ((LORENZO_Q206_FINISH_FOUND) == (FALSE)) {
        INFO_ADDCHOICE(0x11599, "We found a smuggler's warehouse in the city.", 0x115a4);
    };
}

func void DIA_LORENZO_Q206_FINISH_CHOICES_CHECK() {
    INFO_CLEARCHOICES(0x11599);
    if ((Q206_SPAREPABLO) == (TRUE)) {
        if ((((LORENZO_Q206_FINISH_FOUND) == (TRUE)) && ((LORENZO_Q206_FINISH_SMUGGLERS) == (TRUE))) && ((LORENZO_Q206_FINISH_PABLO) == (TRUE))) {
            DIA_LORENZO_Q206_FINISH_NEXT2();
        } else {
            DIA_LORENZO_Q206_FINISH_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if (((LORENZO_Q206_FINISH_FOUND) == (TRUE)) && ((LORENZO_Q206_FINISH_SMUGGLERS) == (TRUE))) {
        DIA_LORENZO_Q206_FINISH_NEXT2();
    };
    DIA_LORENZO_Q206_FINISH_CHOICES();
}

func void DIA_LORENZO_Q206_FINISH_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    if ((Q206_MARVINISSPY) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_03_01");
    };
    B_GIVEPLAYERXP(XP_Q206_GOODSPY_LORENZO);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_03_03");
    DIA_LORENZO_Q206_FINISH_CHOICES_CHECK();
}

func void DIA_LORENZO_Q206_FINISH_FOUND() {
    LORENZO_Q206_FINISH_FOUND = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Found_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Found_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Found_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Found_03_04");
    INFO_CLEARCHOICES(0x11599);
    INFO_ADDCHOICE(0x11599, "(Nod)", 0x115a8);
    INFO_ADDCHOICE(0x11599, "As ordered.", 0x115a7);
}

var int LORENZO_Q206_FINISH_FOUND_NOD = 0;
func void DIA_LORENZO_Q206_FINISH_FOUND_NEXT() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Nod_03_01");
    if ((LORENZO_Q206_FINISH_FOUND_NOD) == (TRUE)) {
        B_GIVEPLAYERXP(XP_Q206_HAPPYLORENZO);
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Nod_03_02");
    };
    DIA_LORENZO_Q206_FINISH_CHOICES_CHECK();
}

func void DIA_LORENZO_Q206_FINISH_FOUND_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Yes_15_01");
    DIA_LORENZO_Q206_FINISH_FOUND_NEXT();
}

func void DIA_LORENZO_Q206_FINISH_FOUND_NOD() {
    LORENZO_Q206_FINISH_FOUND_NOD = TRUE;
    AI_PLAYANI(OTHER, T_YES);
    DIA_LORENZO_Q206_FINISH_FOUND_NEXT();
}

func void DIA_LORENZO_Q206_FINISH_SMUGGLERS() {
    LORENZO_Q206_FINISH_SMUGGLERS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Smugglers_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Smugglers_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Smugglers_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Smugglers_15_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Smugglers_03_05");
    DIA_LORENZO_Q206_FINISH_CHOICES_CHECK();
}

func void DIA_LORENZO_Q206_FINISH_PABLO() {
    LORENZO_Q206_FINISH_PABLO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Pablo_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Pablo_03_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Pablo_03_03");
    INFO_CLEARCHOICES(0x11599);
    INFO_ADDCHOICE(0x11599, DIALOG_BESILENT, 0x115ad);
    INFO_ADDCHOICE(0x11599, "I thought exactly the same thing.", 0x115ac);
}

func void DIA_LORENZO_Q206_FINISH_PABLO_NEXT() {
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Next_03_01");
    AI_RESETFACEANI(OTHER);
    DIA_LORENZO_Q206_FINISH_CHOICES_CHECK();
}

func void DIA_LORENZO_Q206_FINISH_PABLO_EXACTLY() {
    B_GIVEPLAYERXP(XP_Q206_HAPPYLORENZO);
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q206_Finish_Exactly_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Exactly_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q206_Finish_Exactly_03_03");
    DIA_LORENZO_Q206_FINISH_PABLO_NEXT();
}

func void DIA_LORENZO_Q206_FINISH_PABLO_SILENCE() {
    AI_WAIT(OTHER, 0x3f000000);
    AI_WAITTILLEND(SELF, OTHER);
    AI_RESETFACEANI(SELF);
    DIA_LORENZO_Q206_FINISH_PABLO_NEXT();
}

instance DIA_LORENZO_SQ229_RAPORT(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_SQ229_RAPORT_CONDITION;
    INFORMATION = DIA_LORENZO_SQ229_RAPORT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I met fishermen who were carrying packages of swampweed.";
}

func int DIA_LORENZO_SQ229_RAPORT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QA401)) != (LOG_SUCCESS)) {
        if (((SQ229_GOTWEED) == (TRUE)) && ((HERO.GUILD) == (GIL_SLD))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ229_RAPORT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ229_Raport_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ229_Raport_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ229_Raport_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ229_Raport_03_04");
    if ((LOG_GETSTATUS(MIS_SQ229)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ229, LOG_SQ229_SLDRAPORT);
    };
    B_GIVEPLAYERXP(XP_SQ228_LORENZOKNOW);
}

instance DIA_LORENZO_CHANCEPROMOTION(C_INFO) {
    NPC = 0xcb64;
    NR = 30;
    CONDITION = DIA_LORENZO_CHANCEPROMOTION_CONDITION;
    INFORMATION = DIA_LORENZO_CHANCEPROMOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "With who can I talk to about a promotion?";
}

func int DIA_LORENZO_CHANCEPROMOTION_CONDITION() {
    if (((OTHER.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_CHANCEPROMOTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_ChancePromotion_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_ChancePromotion_03_02");
    LOG_CREATETOPIC(TOPIC_QA202, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA202), TOPIC_QA202, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_QA202, LOG_QA202_START);
    LOG_CREATETOPIC(TOPIC_QA203, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA203), TOPIC_QA203, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_QA203, LOG_QA203_START);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_ChancePromotion_03_03");
}

instance DIA_LORENZO_SQ223_AFTERMATCH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_SQ223_AFTERMATCH_CONDITION;
    INFORMATION = DIA_LORENZO_SQ223_AFTERMATCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_SQ223_AFTERMATCH_CONDITION() {
    if (((((HERO.GUILD) == (GIL_SLD)) && ((SQ223_MADLORENZO) == (TRUE))) && ((SQ223_MADLORENZO_DAY) <= ((WLD_GETDAY()) - (4)))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ223_AFTERMATCH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ223_AfterMatch_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ223_AfterMatch_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ223_AfterMatch_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LORENZO_QM302_BUSINESS(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_BUSINESS_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_BUSINESS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm here to talk about the crossbows for the city guard.";
}

func int DIA_LORENZO_QM302_BUSINESS_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QM302_BUSINESS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_Business_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Business_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_Business_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Business_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_LORENZO_QM302_PRESENTATION(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_PRESENTATION_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_PRESENTATION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "We demand a presentation of the equipment in the field.";
}

func int DIA_LORENZO_QM302_PRESENTATION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x115b7))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QM302_PRESENTATION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_Presentation_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Presentation_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Presentation_03_03");
    CREATEINVITEMS(SELF, 0x916a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x916a, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Presentation_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Presentation_03_05");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_LORENZO_CROSSBOW);
    QM302_PREPAREDOCAN();
}

instance DIA_LORENZO_QM302_HELLO(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_HELLO_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_QM302_HELLO_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x10c52))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QM302_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_Hello_03_01");
    AI_RESETFACEANI(SELF);
}

instance DIA_LORENZO_QM302_BADOFFER(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_BADOFFER_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_BADOFFER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Some of your merchandise is defective.";
}

func int DIA_LORENZO_QM302_BADOFFER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10c52))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LORENZO_QM302_BADOFFER_REPAIR = 0;
var int LORENZO_QM302_BADOFFER_TRAINING = 0;
var int LORENZO_QM302_BADOFFER_PRICE = 0;
func void DIA_LORENZO_QM302_BADOFFER_NEXT() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_Next_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_Next_15_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_Next_03_03");
    INFO_CLEARCHOICES(0x115c0);
}

func void DIA_LORENZO_QM302_BADOFFER_CHOICES() {
    INFO_CLEARCHOICES(0x115c0);
    if ((((LORENZO_QM302_BADOFFER_REPAIR) == (FALSE)) || ((LORENZO_QM302_BADOFFER_TRAINING) == (FALSE))) || ((LORENZO_QM302_BADOFFER_PRICE) == (FALSE))) {
        if ((LORENZO_QM302_BADOFFER_REPAIR) == (FALSE)) {
            INFO_ADDCHOICE(0x115c0, "You will find someone to maintain all crossbows.", 0x115ca);
        };
        if ((LORENZO_QM302_BADOFFER_TRAINING) == (FALSE)) {
            INFO_ADDCHOICE(0x115c0, "You're going to organize shooting practice for the guards.", 0x115c9);
        };
        if ((LORENZO_QM302_BADOFFER_PRICE) == (FALSE)) {
            INFO_ADDCHOICE(0x115c0, "You will lower the price.", 0x115c8);
        };
    };
    DIA_LORENZO_QM302_BADOFFER_NEXT();
}

func void DIA_LORENZO_QM302_BADOFFER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_03_05");
    DIA_LORENZO_QM302_BADOFFER_CHOICES();
}

func void DIA_LORENZO_QM302_BADOFFER_PRICE() {
    LORENZO_QM302_BADOFFER_PRICE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_Price_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_Price_03_02");
    DIA_LORENZO_QM302_BADOFFER_CHOICES();
}

func void DIA_LORENZO_QM302_BADOFFER_TRAINING() {
    LORENZO_QM302_BADOFFER_TRAINING = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_Training_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_Training_03_02");
    DIA_LORENZO_QM302_BADOFFER_CHOICES();
}

func void DIA_LORENZO_QM302_BADOFFER_REPAIR() {
    LORENZO_QM302_BADOFFER_REPAIR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_Repair_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_BadOffer_Repair_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_BadOffer_Repair_15_03");
    AI_RESETFACEANI(SELF);
    DIA_LORENZO_QM302_BADOFFER_CHOICES();
}

instance DIA_LORENZO_QM302_GOODOFFER(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_GOODOFFER_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_GOODOFFER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "At cost? That doesn't sound good.";
}

func int DIA_LORENZO_QM302_GOODOFFER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x115c0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QM302_GOODOFFER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_GoodOffer_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_GoodOffer_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_GoodOffer_03_08");
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_LORENZO_DETLOW);
    QM302_PREPAREDETLOW();
}

instance DIA_LORENZO_QM302_DETLOWREADY(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QM302_DETLOWREADY_CONDITION;
    INFORMATION = DIA_LORENZO_QM302_DETLOWREADY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Detlow did what I asked him to do.";
}

func int DIA_LORENZO_QM302_DETLOWREADY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x120fb))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QM302_DETLOWREADY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QM302_DetlowReady_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_DetlowReady_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QM302_DetlowReady_03_03");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_LORENZO_DETLOWREADY);
}

instance DIA_LORENZO_SQ311_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_SQ311_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_SQ311_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came to get paid.";
}

func int DIA_LORENZO_SQ311_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10248))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ311_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ311_Finish_15_01");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ311_Finish_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ311_Finish_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ311_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ311_Finish_03_05");
    CREATEINVITEMS(SELF, 0x859b, SQ311_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ311_REWARD);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ311_Finish_03_06");
    AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_FINISH_V2);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3bf);
}

func void DIA_LORENZO_LEAVEGUILDFOREVER() {
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuildForever_03_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuildForever_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuildForever_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuildForever_03_04");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x11605);
}

instance DIA_LORENZO_Q312_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_Q312_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_Q312_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_Q312_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((OTHER.GUILD) == (GIL_SLD)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_Q312_FINISH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_03_01");
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_03_02");
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "I continued to investigate the disappearance of my brother.", 0x115d8);
}

func void DIA_LORENZO_Q312_FINISH_INVESTIGATION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Investigation_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_03");
    if (NPC_ISDEAD(NONE_7500_BEN)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Investigation_03_06");
    };
    if ((Q306_TOURNAMENTSTATUS) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_04");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Investigation_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Investigation_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Investigation_03_10");
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "It's a dive full of all kinds of thugs.", 0x115d9);
}

func void DIA_LORENZO_Q312_FINISH_HAVEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Haven_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Haven_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Haven_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Haven_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Haven_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Haven_03_06");
    B_USEFAKEBAG_THROW();
    CREATEINVITEMS(SELF, 0x9545, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9545, 1);
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "Thank you, boss.", 0x115dc);
    INFO_ADDCHOICE(0x115d5, "My brother is still out there somewhere and you have done nothing to help him.", 0x115db);
}

func void DIA_LORENZO_Q312_FINISH_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Next_03_02");
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "State of emergency?", 0x115dd);
}

func void DIA_LORENZO_Q312_FINISH_CHAD() {
    MARVIN_LOSTGUILD_SLD_COUNT = (MARVIN_LOSTGUILD_SLD_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Chad_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Chad_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Chad_03_03");
    if ((MARVIN_LOSTGUILD_SLD_COUNT) == (2)) {
        DIA_LORENZO_LEAVEGUILDFOREVER();
    };
    DIA_LORENZO_Q312_FINISH_NEXT();
}

func void DIA_LORENZO_Q312_FINISH_BETA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Beta_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Beta_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Beta_03_03");
    DIA_LORENZO_Q312_FINISH_NEXT();
}

func void DIA_LORENZO_Q312_FINISH_SPECIAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Special_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Special_03_08");
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "So the situation is under control?", 0x115de);
}

func void DIA_LORENZO_Q312_FINISH_CALM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Calm_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Calm_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Calm_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Calm_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Calm_03_05");
    INFO_CLEARCHOICES(0x115d5);
    INFO_ADDCHOICE(0x115d5, "Why does the guard care about a quick conclusion to the investigation?", 0x115e6);
}

var int LORENZO_AFTERHAVEN_ME = 0;
var int LORENZO_AFTERHAVEN_WHO = 0;
var int LORENZO_AFTERHAVEN_OTHER = 0;
var int LORENZO_AFTERHAVEN_SUSPECT = 0;
var int LORENZO_AFTERHAVEN_VOLKER = 0;
var int LORENZO_AFTERHAVEN_WHERE = 0;
func void DIA_LORENZO_Q312_FINISH_CHOICES() {
    INFO_CLEARCHOICES(0x115d5);
    if ((LORENZO_AFTERHAVEN_ME) == (FALSE)) {
        INFO_ADDCHOICE(0x115d5, "Why did you choose me for this assignment?", 0x115e7);
    };
    if ((LORENZO_AFTERHAVEN_WHO) == (TRUE)) {
        if ((LORENZO_AFTERHAVEN_OTHER) == (FALSE)) {
            INFO_ADDCHOICE(0x115d5, "Are you saying someone else is behind the assassination attempt?", 0x115e9);
        };
        if ((LORENZO_AFTERHAVEN_SUSPECT) == (FALSE)) {
            INFO_ADDCHOICE(0x115d5, "Do you know where I can find this suspect?", 0x115ea);
        };
    };
    INFO_ADDCHOICE(0x115d5, "Who is the prime suspect?", 0x115e8);
    if ((LORENZO_AFTERHAVEN_VOLKER) == (FALSE)) {
        INFO_ADDCHOICE(0x115d5, "What do you think of Volker?", 0x115eb);
    };
    if ((LORENZO_AFTERHAVEN_WHERE) == (FALSE)) {
        INFO_ADDCHOICE(0x115d5, "Where do I go first?", 0x115ec);
    };
    if (((((LORENZO_AFTERHAVEN_ME) == (TRUE)) && ((LORENZO_AFTERHAVEN_WHO) == (TRUE))) && ((LORENZO_AFTERHAVEN_SUSPECT) == (TRUE))) && ((LORENZO_AFTERHAVEN_WHERE) == (TRUE))) {
        INFO_ADDCHOICE(0x115d5, "I'll take care of it.", 0x115ed);
    };
}

func void DIA_LORENZO_Q312_FINISH_MILITIA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Militia_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Militia_03_08");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_ME() {
    LORENZO_AFTERHAVEN_ME = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Me_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Me_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Me_03_03");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_WHO() {
    LORENZO_AFTERHAVEN_WHO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Who_03_03");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_OTHER() {
    LORENZO_AFTERHAVEN_OTHER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Other_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Other_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Other_03_03");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_SUSPECT() {
    LORENZO_AFTERHAVEN_SUSPECT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Suspect_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Suspect_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Suspect_03_03");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_VOLKER() {
    LORENZO_AFTERHAVEN_VOLKER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Volker_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Volker_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Volker_03_03");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_WHERE() {
    LORENZO_AFTERHAVEN_WHERE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_Where_03_04");
    DIA_LORENZO_Q312_FINISH_CHOICES();
}

func void DIA_LORENZO_Q312_FINISH_ALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q312_Finish_All_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_All_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_All_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q312_Finish_All_03_04");
    LOG_SETSTATUS(_@(MIS_Q312), TOPIC_Q312, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_Q312, LOG_Q312_FINISH_SLD);
    B_GIVEPLAYERXP(XP_Q312_FINISH);
    LOG_CREATETOPIC(TOPIC_Q308, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q308), TOPIC_Q308, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_START_SLD);
    Q308_PREPAREIVY();
    INFO_CLEARCHOICES(0x115d5);
}

instance DIA_LORENZO_QA304_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA304_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_QA304_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Otmar sent us...";
}

func int DIA_LORENZO_QA304_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11ccf))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QA304_FINISH_INFO() {
    B_TURNTONPC(VLK_13505_WORKER, SLD_5000_LORENZO);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_03_02");
    INFO_CLEARCHOICES(0x115ee);
    INFO_ADDCHOICE(0x115ee, "Not really. (Report back).", 0x115f7);
}

func void LORENZO_QA304_FINISH_FADESCREEN_IN() {
    FADESCREENTOBLACK(1);
}

func void LORENZO_QA304_FINISH_FADESCREEN_OUT() {
    FADESCREENFROMBLACK(1);
}

var int LORENZO_QA304_FINISH_NO_GUILD = 0;
var int LORENZO_QA304_FINISH_NO_NOW = 0;
func void DIA_LORENZO_QA304_FINISH_NEXT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_Next_15_01");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Next_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Next_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_Next_15_07");
    INFO_CLEARCHOICES(0x115ee);
    AI_LOGENTRY(TOPIC_QA304, LOG_QA304_FINISH);
    LOG_SETSTATUS(_@(MIS_QA304), TOPIC_QA304, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_QA304_FINISH);
    CREATEINVITEMS(SELF, 0x859b, QA304_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, QA304_REWARD);
    AI_FUNCTION(SELF, 0xf664);
}

func void DIA_LORENZO_QA304_FINISH_CHOICES() {
    INFO_CLEARCHOICES(0x115ee);
    if (((LORENZO_QA304_FINISH_NO_GUILD) == (FALSE)) || ((LORENZO_QA304_FINISH_NO_NOW) == (FALSE))) {
        if ((LORENZO_QA304_FINISH_NO_GUILD) == (FALSE)) {
            INFO_ADDCHOICE(0x115ee, "Why does the Guild need so much sulfur?", 0x115f8);
        };
        if ((LORENZO_QA304_FINISH_NO_NOW) == (FALSE)) {
            INFO_ADDCHOICE(0x115ee, "And now what?", 0x115f9);
        };
    };
    DIA_LORENZO_QA304_FINISH_NEXT();
}

func void DIA_LORENZO_QA304_FINISH_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_No_15_01");
    AI_FUNCTION(OTHER, 0x115f1);
    AI_WAIT(OTHER, 0x3f8ccccd);
    AI_FUNCTION(OTHER, 0xff4f);
    AI_WAIT(OTHER, 0x3f8ccccd);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_No_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_No_15_03");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_No_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_No_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_No_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_No_03_07");
    DIA_LORENZO_QA304_FINISH_CHOICES();
}

func void DIA_LORENZO_QA304_FINISH_NO_GUILD() {
    LORENZO_QA304_FINISH_NO_GUILD = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_Guild_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Guild_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Guild_03_03");
    DIA_LORENZO_QA304_FINISH_CHOICES();
}

func void DIA_LORENZO_QA304_FINISH_NO_NOW() {
    LORENZO_QA304_FINISH_NO_NOW = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_Now_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA304_Finish_Now_15_07");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA304_Finish_Now_03_08");
    DIA_LORENZO_QA304_FINISH_CHOICES();
}

instance DIA_LORENZO_AFTERMINE(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_AFTERMINE_CONDITION;
    INFORMATION = DIA_LORENZO_AFTERMINE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_AFTERMINE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && ((HERO.GUILD) == (GIL_SLD))) && ((Q404_MARVINFINISHEDMINE) == (2))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_AFTERMINE_INFO() {
    if ((Q402_ARAXOS_MESSAGE) == (FALSE)) {
        Q402_ARAXOS_MESSAGE = TRUE;
    };
    if ((Q402_MARVINISLATE) == (TRUE)) {
        Q402_MARVINISLATE = 3;
    };
    if ((Q402_MARVINISLATE) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_03");
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_06");
    if ((Q402_MARVINISLATE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_07");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_03_08");
    AI_FUNCTION(SELF, 0xf138);
    INFO_CLEARCHOICES(0x115fa);
    INFO_ADDCHOICE(0x115fa, "I'm very close to finding my brother, I can't.", 0x11600);
    INFO_ADDCHOICE(0x115fa, "I understand. I'll be right there.", 0x115fe);
}

func void DIA_LORENZO_START_KQ401() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x115fa);
    LOG_CREATETOPIC(TOPIC_KQ401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_KQ401), TOPIC_KQ401, LOG_RUNNING);
    AI_FUNCTION(SELF, 0xf868);
}

func void DIA_LORENZO_AFTERMINE_YES() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_Yes_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, "T_GREETCOOL");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_Yes_03_03");
    DIA_LORENZO_START_KQ401();
    AI_LOGENTRY(TOPIC_KQ401, LOG_KQ401_START_ARAXOS_GOOD);
}

func void DIA_LORENZO_AFTERMINE_GO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_No_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_No_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_No_03_07");
}

func void DIA_LORENZO_AFTERMINE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_No_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_No_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_No_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_No_03_04");
    DIA_LORENZO_AFTERMINE_GO();
    INFO_CLEARCHOICES(0x115fa);
    INFO_ADDCHOICE(0x115fa, "I'll take care of what you were supposed to help me with.", 0x11603);
    INFO_ADDCHOICE(0x115fa, "Okay, I'm going.", 0x11601);
}

func void DIA_LORENZO_AFTERMINE_NO_OKAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_Okay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_Okay_03_02");
    DIA_LORENZO_START_KQ401();
    AI_LOGENTRY(TOPIC_KQ401, LOG_KQ401_START_ARAXOS_BAD);
}

func void DIA_LORENZO_AFTERMINE_ENDTALK() {
    DIA_LORENZO_AFTERMINE_GO();
    DIA_LORENZO_AFTERMINE_NO_OKAY();
}

func void DIA_LORENZO_AFTERMINE_NO_NOWAY() {
    MARVIN_LOSTGUILD_SLD_COUNT = (MARVIN_LOSTGUILD_SLD_COUNT) + (1);
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_10");
    if ((MARVIN_LOSTGUILD_SLD_COUNT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_14");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_15");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_16");
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_AfterMine_NoWay_15_17");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_AfterMine_NoWay_03_18");
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 0x11605);
        AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LOSTGUILD_ARAXOS);
        AI_FUNCTION(SELF, 0xf868);
    };
    DIA_LORENZO_AFTERMINE_ENDTALK();
    INFO_CLEARCHOICES(0x115fa);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void MARVIN_LEAVEARAXOSGUILD() {
    GAMESERVICES_UNLOCKACHIEVEMENT(ACH_11);
    MARVIN_LOSTGUILDARAXOS = TRUE;
    B_REMOVEARAXOSARMOR_FULL();
}

func void LORENZO_KICKMARVINSLD() {
    FADESCREENTOBLACKF(1, 0x11606, 1000);
    if ((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) {
        WLD_INSERTNPC(0xcef5, "PARTM1_JOINARAXOS_BOSS");
        B_STARTOTHERROUTINE(MIL_6382_ALCAS, "ARAXOS");
    };
}

func void LORENZO_KICKMARVINSLD_FADESCREEN() {
    TELEPORTNPCTOWP(0x71b, "PARTM1_JOINARAXOS_HERO");
    MARVIN_LEAVEARAXOSGUILD();
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

instance DIA_LORENZO_FOUNDJORN(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_FOUNDJORN_CONDITION;
    INFORMATION = DIA_LORENZO_FOUNDJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found my brother. He's dead.";
}

func int DIA_LORENZO_FOUNDJORN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_GQ001)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q406)) == (LOG_RUNNING))) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_FOUNDJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_FoundJorn_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_FoundJorn_15_13");
    AI_LOGENTRY(TOPIC_Q406, LOG_Q406_LORENZO);
}

instance DIA_LORENZO_KQ403_NEWS(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_KQ403_NEWS_CONDITION;
    INFORMATION = DIA_LORENZO_KQ403_NEWS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I talked to Grayson.";
}

func int DIA_LORENZO_KQ403_NEWS_CONDITION() {
    if ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_KQ403_NEWS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_07");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_11");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_03_13");
    INFO_CLEARCHOICES(0x1160a);
    INFO_ADDCHOICE(0x1160a, "Grayson won't accept half-measures.", 0x1160d);
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_Grayson_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Grayson_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Grayson_03_03");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Grayson_03_04");
    INFO_CLEARCHOICES(0x1160a);
    INFO_ADDCHOICE(0x1160a, "Unless what?", 0x1160e);
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_What_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_What_03_03");
    INFO_CLEARCHOICES(0x1160a);
    if (NPC_KNOWSINFO(OTHER, 0x12486)) {
        INFO_ADDCHOICE(0x1160a, "Kaleb? How did he get a house like this?", 0x11610);
    };
    INFO_ADDCHOICE(0x1160a, "Who is this Kaleb guy?", 0x11611);
}

func void DIA_LORENZO_KQ403_NEWS_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_KalebV1_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV1_03_08");
    INFO_CLEARCHOICES(0x1160a);
    if ((LOG_GETSTATUS(MIS_Q405)) == (LOG_SUCCESS)) {
        INFO_ADDCHOICE(0x1160a, "You're on your own. (Leave the Merchant's Guild)", 0x11613);
    };
    INFO_ADDCHOICE(0x1160a, "I'll see what I can do.", 0x11612);
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON_WHAT_KALEBV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_KalebV1_15_01");
    DIA_LORENZO_KQ403_NEWS_NEXT();
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON_WHAT_KALEBV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_KalebV2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_KalebV2_03_02");
    DIA_LORENZO_KQ403_NEWS_NEXT();
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON_WHAT_KALEBV1_YES() {
    KQ403_DECISION = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Yes_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_Yes_15_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Yes_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_Yes_03_06");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_KALEB);
    INFO_CLEARCHOICES(0x1160a);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_LORENZO_KQ403_NEWS_GRAYSON_WHAT_KALEBV1_NO() {
    KQ403_DECISION = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_No_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_No_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_10");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_No_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_News_No_03_13");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_News_No_15_14");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x1160a);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_LEAVE);
    AI_FUNCTION(SELF, 0x11604);
}

instance DIA_LORENZO_KQ403_KALEB(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_KQ403_KALEB_CONDITION;
    INFORMATION = DIA_LORENZO_KQ403_KALEB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "About Kaleb's house...";
}

func int DIA_LORENZO_KQ403_KALEB_CONDITION() {
    if ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) {
        if (((KQ403_DIALOGUEWITHKALEB) == (1)) || ((KQ403_DEALWITHKALEB) >= (1))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_KQ403_KALEB_END() {
    KQ403_CANTALKWITHGRAYSON = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_22");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_23");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_24");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_25");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_26");
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_HAPPY);
    INFO_CLEARCHOICES(0x11614);
    INFO_ADDCHOICE(0x11614, "(Go to Grayson)", 0x11646);
    INFO_ADDCHOICE(0x11614, "(Take care of other matters)", 0x11647);
}

func void DIA_LORENZO_KQ403_KALEB_INFO() {
    KQ403_TAVERN();
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_02");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_03");
    if ((KQ403_DIALOGUEWITHKALEB) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_04");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_07");
        if ((KQ403_OLAFTAVERNREADY) == (1)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_08");
        } else {
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_09");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_10");
        } else {
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_11");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_12");
        } else {
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_13");
        } else {
            AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_14");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_15");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_16");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_17");
        } else {
            INFO_CLEARCHOICES(0x11614);
        } else {
            INFO_ADDCHOICE(0x11614, "Which is more important: your pride or the good of the Guild?", 0x11618);
        } else {
            /* set_instance(0) */;
        };
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_18");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_19");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_20");
    if ((KQ403_DEALWITHKALEB) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_21");
        DIA_LORENZO_KQ403_KALEB_END();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_27");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_28");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_29");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_15_30");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_31");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_03_32");
    DIA_LORENZO_KQ403_KALEB_END();
}

func void DIA_LORENZO_KQ403_KALEB_GUILD() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_Guild_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_Guild_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_Guild_15_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_Guild_03_04");
    B_USEFAKESCROLL();
    CREATEINVITEMS(SELF, 0x91cd, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91cd, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_Guild_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_Guild_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Kaleb_Guild_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Kaleb_Guild_03_08");
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_LETTER);
    INFO_CLEARCHOICES(0x11614);
    INFO_ADDCHOICE(0x11614, "(Go to Kaleb)", 0x11619);
    INFO_ADDCHOICE(0x11614, "(Take care of other matters)", 0x11647);
}

func void DIA_LORENZO_KQ403_KALEB_TELEPORT() {
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf1e1);
}

instance DIA_LORENZO_KQ403_KALEBGETALONG(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_KQ403_KALEBGETALONG_CONDITION;
    INFORMATION = DIA_LORENZO_KQ403_KALEBGETALONG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Looks like we're not giving up the barracks.";
}

func int DIA_LORENZO_KQ403_KALEBGETALONG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) && ((KQ403_KALEBDONE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_KQ403_KALEBGETALONG_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_KalebGetAlong_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_02");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_KalebGetAlong_15_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_08");
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_KalebGetAlong_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_KalebGetAlong_15_11");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_KalebGetAlong_03_14");
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_KALEBDONE_V1);
    INFO_CLEARCHOICES(0x1161a);
    INFO_ADDCHOICE(0x1161a, "(Go to Grayson)", 0x11646);
    INFO_ADDCHOICE(0x1161a, "(Take care of other matters)", 0x11647);
}

instance DIA_LORENZO_KQ403_DONE(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_KQ403_DONE_CONDITION;
    INFORMATION = DIA_LORENZO_KQ403_DONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Offer accepted.";
}

func int DIA_LORENZO_KQ403_DONE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) && ((KQ403_GRAYSONDONE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_KQ403_DONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Done_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Done_15_03");
    if ((KQ403_DIALOGUEWITHKALEB) != (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_06");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Done_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ403_Done_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ403_Done_15_10");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ403, LOG_KQ403_LORENZO_FINISH);
    B_GIVEPLAYERXP(XP_KQ403_FINISH);
    if ((KQ403_DIALOGUEWITHKALEB) == (2)) {
        CREATEINVITEMS(SELF, 0x859b, KQ406_REWARD);
    };
    CREATEINVITEMS(SELF, 0x859b, (KQ406_REWARD) / (2));
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, (KQ406_REWARD) / (2));
    KQ403_FINISHQUEST();
}

instance DIA_LORENZO_QA401_START(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA401_START_CONDITION;
    INFORMATION = DIA_LORENZO_QA401_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_QA401_START_CONDITION() {
    if ((((HERO.GUILD) == (GIL_SLD)) && ((KAPITEL) == (5))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QA401_START_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_03_01");
    INFO_CLEARCHOICES(0x11620);
    INFO_ADDCHOICE(0x11620, "What kind of a job is that?", 0x11629);
    QA401_PREPARENPC();
}

var int LORENZO_QA401_START_TRACE = 0;
var int LORENZO_QA401_START_PROVE = 0;
func void DIA_LORENZO_QA401_START_CHOICES() {
    INFO_CLEARCHOICES(0x11620);
    if ((LORENZO_QA401_START_TRACE) == (FALSE)) {
        INFO_ADDCHOICE(0x11620, "Can you tell me more about these leads?", 0x1162a);
    };
    INFO_ADDCHOICE(0x11620, "I'm going to work.", 0x1162d);
    if ((LORENZO_QA401_START_PROVE) == (FALSE)) {
        INFO_ADDCHOICE(0x11620, "Since we have the evidence, can't the guards handle it?", 0x1162c);
    };
}

func void DIA_LORENZO_QA401_START_NEXT2() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Next2_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Next2_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Next2_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Next2_03_04");
    DIA_LORENZO_QA401_START_CHOICES();
}

var int LORENZO_QA401_SEARCHJORN = 0;
func void DIA_LORENZO_QA401_START_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Next_03_01");
    LOG_CREATETOPIC(TOPIC_QA401, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA401), TOPIC_QA401, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_START);
    DIA_LORENZO_QA401_START_NEXT2();
}

func void DIA_LORENZO_QA401_START_YES() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Start_Yes_15_01");
    DIA_LORENZO_QA401_START_NEXT();
}

func void DIA_LORENZO_QA401_START_TRACE() {
    LORENZO_QA401_START_TRACE = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Start_Trace_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Trace_03_02");
    CREATEINVITEMS(SELF, 0x91bb, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91bb, 1);
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_LORENZO_TRACE);
    INFO_CLEARCHOICES(0x11620);
    INFO_ADDCHOICE(0x11620, "What should I do once I'm done with it?", 0x1162b);
}

func void DIA_LORENZO_QA401_START_TRACE_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Start_What_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_What_03_03");
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_LORENZO_BEACH);
    DIA_LORENZO_QA401_START_CHOICES();
}

func void DIA_LORENZO_QA401_START_PROVE() {
    LORENZO_QA401_START_PROVE = TRUE;
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Start_Prove_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Prove_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Prove_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    DIA_LORENZO_QA401_START_CHOICES();
}

func void DIA_LORENZO_QA401_START_GO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Start_Go_15_01");
    if ((Q206_SPAREPABLO) == (TRUE)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Start_Go_03_02");
        B_GIVEPLAYERXP(XP_QA401_PABLOALIVE);
        AI_RESETFACEANI(SELF);
    };
    INFO_CLEARCHOICES(0x11620);
}

instance DIA_LORENZO_QA401_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA401_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_QA401_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "We broke up the gang of smugglers and took their hideout.";
}

func int DIA_LORENZO_QA401_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1123c))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LORENZO_QA401_FINISH_ONESMUGGLER = 0;
var int LORENZO_QA401_FINISH_OTMAR = 0;
var int LORENZO_QA401_FINISH_ARMAR = 0;
var int LORENZO_QA401_FINISH_BONUSEXP = 0;
var int LORENZO_QA401_FINISH_BADCHOICE = 0;
func void DIA_LORENZO_QA401_FINISH_CHOICES() {
    INFO_CLEARCHOICES(0x1162e);
    if ((LORENZO_QA401_FINISH_ONESMUGGLER) == (FALSE)) {
        INFO_ADDCHOICE(0x1162e, "We let one smuggler go so he talk about what happened.", 0x11638);
    };
    INFO_ADDCHOICE(0x1162e, "I think that's it.", 0x1163b);
    if ((QA401_OTMAR_GOTANYTHING) == (TRUE)) {
        if ((LORENZO_QA401_FINISH_OTMAR) == (FALSE)) {
            INFO_ADDCHOICE(0x1162e, "Otmar confessed to working with the smugglers.", 0x11637);
        };
    };
    if ((QA401_ARMARRESULT) >= (1)) {
        if ((LORENZO_QA401_FINISH_ARMAR) == (FALSE)) {
            INFO_ADDCHOICE(0x1162e, "Turns out it was Armar who was dealing with the smugglers.", 0x1163a);
        };
    };
}

func void DIA_LORENZO_QA401_FINISH_INFO() {
    LORENZO_QA401_FINISH_BONUSEXP = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_15_01");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_03_04");
    DIA_LORENZO_QA401_FINISH_CHOICES();
}

func void DIA_LORENZO_QA401_FINISH_OTMAR() {
    LORENZO_QA401_FINISH_OTMAR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_Otmar_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_Otmar_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_Otmar_03_03");
    LORENZO_QA401_FINISH_BONUSEXP = (LORENZO_QA401_FINISH_BONUSEXP) + (1);
    DIA_LORENZO_QA401_FINISH_CHOICES();
}

func void DIA_LORENZO_QA401_FINISH_ONESMUGGLER() {
    LORENZO_QA401_FINISH_ONESMUGGLER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_OneSmuggler_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_OneSmuggler_03_02");
    if ((QA401_SMUGGLERCHEST_DECISION) == (2)) {
        INFO_CLEARCHOICES(0x1162e);
        INFO_ADDCHOICE(0x1162e, "Apart from him, no one survived.", 0x11639);
    };
    DIA_LORENZO_QA401_FINISH_CHOICES();
}

func void DIA_LORENZO_QA401_FINISH_ONESMUGGLER_EVERYONEDEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_EveryoneDead_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_EveryoneDead_03_02");
    LORENZO_QA401_FINISH_BONUSEXP = (LORENZO_QA401_FINISH_BONUSEXP) + (1);
    DIA_LORENZO_QA401_FINISH_CHOICES();
}

func void DIA_LORENZO_QA401_FINISH_ARMAR() {
    LORENZO_QA401_FINISH_ARMAR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_Armar_15_01");
    if ((QA401_ARMARRESULT) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_Armar_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_Armar_03_03");
        LORENZO_QA401_FINISH_BONUSEXP = (LORENZO_QA401_FINISH_BONUSEXP) + (1);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_Armar_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_Armar_03_05");
    DIA_LORENZO_QA401_FINISH_CHOICES();
}

func void DIA_LORENZO_QA401_FINISH_ALL() {
    if ((PABLO_ITEMSGIVEN) == (TRUE)) {
        PABLO_ITEMSGIVEN = FALSE;
    };
    QA401_FINISH = TRUE;
    QA401_FINISH_DAY = WLD_GETDAY();
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA401_Finish_All_15_01");
    if (((QA401_BRIDGEBIGCRATERESULT) == (1)) || ((QA401_WAKEUPWORKERS) == (1))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_02");
        if ((QA401_BRIDGEBIGCRATERESULT) == (1)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_03");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_04");
            LORENZO_QA401_FINISH_BADCHOICE = (LORENZO_QA401_FINISH_BADCHOICE) + (1);
        };
        if ((QA401_WAKEUPWORKERS) == (1)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_05");
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_06");
            LORENZO_QA401_FINISH_BADCHOICE = (LORENZO_QA401_FINISH_BADCHOICE) + (1);
        };
    };
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA401_Finish_All_03_09");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_FINISH);
    LOG_SETSTATUS(_@(MIS_QA401), TOPIC_QA401, LOG_SUCCESS);
    B_GIVEPLAYERXP((XP_QA401_FINISH) + ((XP_QA401_BONUSEXP) * (LORENZO_QA401_FINISH_BONUSEXP)));
    CREATEINVITEMS(SELF, 0x859b, (QA401_FINISHREWARD) - ((QA401_BADCHOICE) * (LORENZO_QA401_FINISH_BADCHOICE)));
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, (QA401_FINISHREWARD) - ((QA401_BADCHOICE) * (LORENZO_QA401_FINISH_BADCHOICE)));
    QA401_REMOVENPC();
    QA401_PABLOUPDATEARAXOS();
    INFO_CLEARCHOICES(0x1162e);
}

instance DIA_LORENZO_SQ503_START(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_SQ503_START_CONDITION;
    INFORMATION = DIA_LORENZO_SQ503_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_SQ503_START_CONDITION() {
    if ((((KAPITEL) == (5)) && ((MARVIN_ARAXOSSPECIALIZATION) >= (3))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((((SQ503_GUILDFINALTIER) == (TRUE)) && ((SQ503_GUILDFINALTIER_DAY) <= ((WLD_GETDAY()) - (1)))) && ((LOG_GETSTATUS(MIS_QA306)) == (LOG_SUCCESS))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ503_START_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Start_03_08");
    SQ503_STARTQUEST();
}

instance DIA_LORENZO_SQ503_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_SQ503_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_SQ503_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The Scoundrel's Haven has officially ceased to exist.";
}

func int DIA_LORENZO_SQ503_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10804))) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ503_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ503_Finish_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ503_Finish_03_10");
    AI_RESETFACEANI(SELF);
    SQ503_FINISHQUEST();
}

instance DIA_LORENZO_KQ407_GRAYSONLETTER(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_KQ407_GRAYSONLETTER_CONDITION;
    INFORMATION = DIA_LORENZO_KQ407_GRAYSONLETTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I bring a letter from Grayson. It's a matter of the utmost importance.";
}

func int DIA_LORENZO_KQ407_GRAYSONLETTER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x924f)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_KQ407_GRAYSONLETTER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ407_GraysonLetter_15_01");
    B_STANDUP();
    B_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_03_03");
    B_GIVEINVITEMS(OTHER, SELF, 0x924f, 1);
    INFO_CLEARCHOICES(0x11642);
    INFO_ADDCHOICE(0x11642, "What is your answer?", 0x11645);
}

func void DIA_LORENZO_KQ407_GRAYSONLETTER_ANWSER() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_03_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_KQ407_GraysonLetter_Anwser_03_06");
    AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_LORENZO_READY);
    if ((NPC_KNOWSINFO(HERO, 0x102d0)) && (NPC_KNOWSINFO(HERO, 0x11642))) {
        AI_LOGENTRY(TOPIC_KQ407, LOG_KQ407_GUILDLEADERSREADY);
        KQ407_TALKEDRODERICHLORENZO = TRUE;
        INFO_CLEARCHOICES(0x11642);
        INFO_ADDCHOICE(0x11642, "(Go to Grayson)", 0x11646);
        INFO_ADDCHOICE(0x11642, "(Take care of other matters)", 0x11647);
    };
}

func void DIA_LORENZO_KQ407_GRAYSONLETTER_TELEPORT() {
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf149);
}

func void DIA_LORENZO_KQ407_GRAYSONLETTER_NORMAL() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LORENZO_PROMOTION_TIER1(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_PROMOTION_TIER1_CONDITION;
    INFORMATION = DIA_LORENZO_PROMOTION_TIER1_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_PROMOTION_TIER1_CONDITION() {
    if (((HERO.GUILD) == (GIL_SLD)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((((LOG_GETSTATUS(MIS_Q206)) == (LOG_SUCCESS)) && ((Q206_AFTERQUEST) == (1))) && ((Q206_AFTERQUEST_DAY) <= ((WLD_GETDAY()) - (1)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PROMOTION_TIER1_INFO() {
    B_GIVEPLAYERXP(XP_ARAXOS_PROMOTION_TIER1);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier1_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Promotion_Tier1_15_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier1_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier1_03_04");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Promotion_Tier1_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier1_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LORENZO_PROMOTION_TIER2(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_PROMOTION_TIER2_CONDITION;
    INFORMATION = DIA_LORENZO_PROMOTION_TIER2_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_PROMOTION_TIER2_CONDITION() {
    if ((((HERO.GUILD) == (GIL_SLD)) && (NPC_ISINSTATE(SELF, 0xf09f))) && (NPC_KNOWSINFO(OTHER, 0x11648))) {
        if ((((((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA303)) == (LOG_SUCCESS))) && ((QA303_FINISH) == (TRUE))) && ((QA303_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) || (((((LOG_GETSTATUS(MIS_QA203)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA305)) == (LOG_SUCCESS))) && ((QA305_FINISH) == (TRUE))) && ((QA305_FINISH_DAY) <= ((WLD_GETDAY()) - (1))))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PROMOTION_TIER2_INFO() {
    if ((Q402_LOSTGUILDSLDOPTIONUNLOCKED) == (TRUE)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_07");
        AI_RESETFACEANI(SELF);
    };
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_01");
    if (((((((((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA303)) == (LOG_SUCCESS))) && ((QA303_FINISH) == (TRUE))) && ((QA303_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((LOG_GETSTATUS(MIS_QA203)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_QA305)) == (LOG_SUCCESS))) && ((QA305_FINISH) == (TRUE))) && ((QA305_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) {
        MARVIN_ARAXOSSPECIALIZATION_CANJOIN_FIGHTER = TRUE;
        MARVIN_ARAXOSSPECIALIZATION_CANJOIN_ARCHER = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_05");
    };
    if (((((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA303)) == (LOG_SUCCESS))) && ((QA303_FINISH) == (TRUE))) && ((QA303_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) {
        MARVIN_ARAXOSSPECIALIZATION_CANJOIN_ARCHER = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_03");
    };
    if (((((LOG_GETSTATUS(MIS_QA203)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA305)) == (LOG_SUCCESS))) && ((QA305_FINISH) == (TRUE))) && ((QA305_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) {
        MARVIN_ARAXOSSPECIALIZATION_CANJOIN_FIGHTER = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_02");
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_03_06");
    AI_RESETFACEANI(SELF);
}

instance DIA_LORENZO_PROMOTION_TIER2_ADELARD(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_PROMOTION_TIER2_ADELARD_CONDITION;
    INFORMATION = DIA_LORENZO_PROMOTION_TIER2_ADELARD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_PROMOTION_TIER2_ADELARD_CONDITION() {
    if (((HERO.GUILD) == (GIL_SLD)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_NONE)) && ((MARVIN_ARAXOSSPECIALIZATION_CANJOIN_ARCHER) == (TRUE))) && ((MARVIN_ARAXOSSPECIALIZATION_CANJOIN_FIGHTER) == (FALSE))) {
            if (((((LOG_GETSTATUS(MIS_QA203)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA305)) == (LOG_SUCCESS))) && ((QA305_FINISH) == (TRUE))) && ((QA305_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PROMOTION_TIER2_THINK() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_Choose_03_02");
    AI_RESETFACEANI(SELF);
}

func void DIA_LORENZO_PROMOTION_TIER2_ADELARD_INFO() {
    MARVIN_ARAXOSSPECIALIZATION_CANJOIN_FIGHTER = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_Adelard_03_01");
    DIA_LORENZO_PROMOTION_TIER2_THINK();
}

instance DIA_LORENZO_PROMOTION_TIER2_GAROS(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_PROMOTION_TIER2_GAROS_CONDITION;
    INFORMATION = DIA_LORENZO_PROMOTION_TIER2_GAROS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_PROMOTION_TIER2_GAROS_CONDITION() {
    if (((HERO.GUILD) == (GIL_SLD)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_NONE)) && ((MARVIN_ARAXOSSPECIALIZATION_CANJOIN_FIGHTER) == (TRUE))) && ((MARVIN_ARAXOSSPECIALIZATION_CANJOIN_ARCHER) == (FALSE))) {
            if (((((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_QA303)) == (LOG_SUCCESS))) && ((QA303_FINISH) == (TRUE))) && ((QA303_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PROMOTION_TIER2_GAROS_INFO() {
    MARVIN_ARAXOSSPECIALIZATION_CANJOIN_ARCHER = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_Tier2_Garos_03_01");
    DIA_LORENZO_PROMOTION_TIER2_THINK();
}

instance DIA_LORENZO_SQ301(C_INFO) {
    NPC = 0xcb64;
    NR = 2;
    CONDITION = DIA_LORENZO_SQ301_CONDITION;
    INFORMATION = DIA_LORENZO_SQ301_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Couldn't the Guild use an iron mine?";
}

func int DIA_LORENZO_SQ301_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x11546)) && ((OTHER.GUILD) == (GIL_SLD))) && ((SQ301_GUILDLEADERTALK) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ301)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_SQ301_INFO() {
    SQ301_SPAWNNEWMONSTERS = 1;
    SQ301_SPAWNNEWMONSTERS = WLD_GETDAY();
    SQ301_WHOMINE = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ301_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ301_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_SQ301_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ301_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_SQ301_03_05");
    B_GIVEPLAYERXP(XP_SQ301_FINISH);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ301_REWARD);
    AI_LOGENTRY(TOPIC_SQ301, LOG_SQ301_FINISH_SLD);
    LOG_SETSTATUS(_@(MIS_SQ301), TOPIC_SQ301, LOG_SUCCESS);
    AI_FUNCTION(SELF, 0xfa2d);
}

instance DIA_LORENZO_QA306_ASK(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA306_ASK_CONDITION;
    INFORMATION = DIA_LORENZO_QA306_ASK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You seem worried about something. Is something wrong?";
}

func int DIA_LORENZO_QA306_ASK_CONDITION() {
    if (((KAPITEL) >= (3)) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QA306_ASK_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Ask_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_03_02");
    INFO_CLEARCHOICES(0x11658);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_SUCCESS)) {
        INFO_ADDCHOICE(0x11658, "I visited it some time ago.", 0x1165c);
    };
    INFO_ADDCHOICE(0x11658, "I had some other things on my mind.", 0x1165d);
}

func void DIA_LORENZO_QA306_NEXT() {
    LORENZO_QA306_ARAXOSMINESTATUS = 2;
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_Yes_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_Yes_03_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_Yes_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_Yes_03_05");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x11658);
}

func void DIA_LORENZO_QA306_ASK_YES() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Ask_Yes_15_01");
    DIA_LORENZO_QA306_NEXT();
}

func void DIA_LORENZO_QA306_ASK_NO() {
    LORENZO_QA306_ARAXOSMINESTATUS = 1;
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Ask_No_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_No_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Ask_No_03_04");
    INFO_CLEARCHOICES(0x11658);
    LOG_CREATETOPIC(TOPIC_QA306, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_QA306), TOPIC_QA306, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_START_V1);
}

instance DIA_LORENZO_QA306_BACKAGAIN(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA306_BACKAGAIN_CONDITION;
    INFORMATION = DIA_LORENZO_QA306_BACKAGAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm back from the mine.";
}

func int DIA_LORENZO_QA306_BACKAGAIN_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ119)) == (LOG_SUCCESS)) && ((LORENZO_QA306_ARAXOSMINESTATUS) == (1))) && ((KAPITEL) >= (3))) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QA306_BACKAGAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_BackAgain_15_01");
    DIA_LORENZO_QA306_NEXT();
}

instance DIA_LORENZO_QA306_START(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA306_START_CONDITION;
    INFORMATION = DIA_LORENZO_QA306_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What should I do?";
}

func int DIA_LORENZO_QA306_START_CONDITION() {
    if ((((LORENZO_QA306_ARAXOSMINESTATUS) == (2)) && ((KAPITEL) >= (3))) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LORENZO_QA306_START_IGOR = 0;
var int LORENZO_QA306_START_WEIRD = 0;
func void DIA_LORENZO_QA306_START_CHOICES() {
    INFO_CLEARCHOICES(0x11661);
    if (((LORENZO_QA306_START_IGOR) == (FALSE)) || ((LORENZO_QA306_START_WEIRD) == (FALSE))) {
        if ((LORENZO_QA306_START_IGOR) == (FALSE)) {
            INFO_ADDCHOICE(0x11661, "Can you tell me something about Igor? I haven't had a chance to meet him.", 0x11668);
        };
        if ((LORENZO_QA306_START_WEIRD) == (FALSE)) {
            INFO_ADDCHOICE(0x11661, "And it won't be suspicious if I suddenly return to the mine?", 0x11667);
        };
    };
    INFO_ADDCHOICE(0x11661, "I'll head out to the mine in the next few days.", 0x11669);
}

func void DIA_LORENZO_QA306_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_03_03");
    if ((LOG_GETSTATUS(MIS_QA306)) != (LOG_RUNNING)) {
        LOG_CREATETOPIC(TOPIC_QA306, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_QA306), TOPIC_QA306, LOG_RUNNING);
    };
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_START_V2);
    DIA_LORENZO_QA306_START_CHOICES();
}

func void DIA_LORENZO_QA306_START_WEIRD() {
    LORENZO_QA306_START_WEIRD = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Start_Weird_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Weird_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Weird_03_03");
    AI_RESETFACEANI(OTHER);
    DIA_LORENZO_QA306_START_CHOICES();
}

func void DIA_LORENZO_QA306_START_IGOR() {
    LORENZO_QA306_START_IGOR = TRUE;
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Start_Igor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Igor_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Igor_03_03");
    CREATEINVITEMS(SELF, 0x9162, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9162, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Igor_03_04");
    AI_RESETFACEANI(OTHER);
    DIA_LORENZO_QA306_START_CHOICES();
}

func void DIA_LORENZO_QA306_START_GO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Start_Go_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Start_Go_03_02");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_LORENZO_GOTOMINE);
    INFO_CLEARCHOICES(0x11661);
    QA306_COUNTDAY();
}

instance DIA_LORENZO_QA306_FINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_QA306_FINISH_CONDITION;
    INFORMATION = DIA_LORENZO_QA306_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_QA306_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_CANFINISHQUEST) == (TRUE))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_QA306_FINISH_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_03_01");
    INFO_CLEARCHOICES(0x1166a);
    INFO_ADDCHOICE(0x1166a, "It's not what you think...", 0x1166f);
    INFO_ADDCHOICE(0x1166a, "Whatever he said is lies!", 0x1166e);
}

func void DIA_LORENZO_QA306_FINISH_NEXT() {
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_03");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_06");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Next_03_07");
    INFO_CLEARCHOICES(0x1166a);
    if ((QA306_LOAFSJUDGMENT_RESULT) == (1)) {
        INFO_ADDCHOICE(0x1166a, "Unfortunately, a forceful solution couldn't be avoided.", 0x11672);
    };
    INFO_ADDCHOICE(0x1166a, "I persuaded them and assured them that you would help them.", 0x11673);
}

func void DIA_LORENZO_QA306_FINISH_LIE() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_Lie_15_01");
    DIA_LORENZO_QA306_FINISH_NEXT();
}

func void DIA_LORENZO_QA306_FINISH_NOTLIKE() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_NotLike_15_01");
    DIA_LORENZO_QA306_FINISH_NEXT();
}

func void DIA_LORENZO_QA306_FINISH_MINEQUESTION() {
    INFO_CLEARCHOICES(0x1166a);
    INFO_ADDCHOICE(0x1166a, "What will happen to the mine now?", 0x11676);
}

func void DIA_LORENZO_QA306_FINISH_NEXT2() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Talk_03_03");
    if ((QA306_FIGHTWITHMURKSTATUS) == (2)) {
        INFO_CLEARCHOICES(0x1166a);
        INFO_ADDCHOICE(0x1166a, "There's something else...", 0x11674);
    };
    DIA_LORENZO_QA306_FINISH_MINEQUESTION();
}

func void DIA_LORENZO_QA306_FINISH_NOTLIKE_NEXT_FIGHT() {
    AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_Fight_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Fight_03_02");
    DIA_LORENZO_QA306_FINISH_NEXT2();
}

func void DIA_LORENZO_QA306_FINISH_NOTLIKE_NEXT_TALK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_Talk_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Talk_03_02");
    DIA_LORENZO_QA306_FINISH_NEXT2();
}

func void DIA_LORENZO_QA306_FINISH_NOTLIKE_NEXT_TALK_MORE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_More_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_More_15_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_More_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_More_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_More_15_05");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_More_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_More_03_07");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_More_03_08");
    DIA_LORENZO_QA306_FINISH_MINEQUESTION();
}

func void DIA_LORENZO_QA306_FINISH_END() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Finish_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    CREATEINVITEMS(SELF, 0x859b, QA306_REWARD);
    if ((QA306_FIGHTWITHMURKSTATUS) == (2)) {
        AI_LOGENTRY(TOPIC_QA306, LOG_QA306_FINISH_V1);
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, QA306_REWARD);
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_FINISH_V2);
    if ((QA306_FIGHTWITHMURKSTATUS) == (2)) {
        CREATEINVITEMS(SELF, 0x859a, 5);
    };
    if ((QA306_LOAFSJUDGMENT_RESULT) != (1)) {
        CREATEINVITEMS(SELF, 0x9545, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9545, 1);
    };
    LOG_SETSTATUS(_@(MIS_QA306), TOPIC_QA306, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_QA306_FINISH);
    INFO_CLEARCHOICES(0x1166a);
    AI_FUNCTION(SELF, 0xf71c);
}

func void DIA_LORENZO_QA306_FINISH_NOTLIKE_NEXT_TALK_MINE() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_QA306_Finish_Mine_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Mine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Mine_03_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Mine_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_QA306_Finish_Mine_03_05");
    DIA_LORENZO_QA306_FINISH_END();
}

instance DIA_LORENZO_PROMOTION_TIERFINAL(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_PROMOTION_TIERFINAL_CONDITION;
    INFORMATION = DIA_LORENZO_PROMOTION_TIERFINAL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LORENZO_PROMOTION_TIERFINAL_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((HERO.GUILD) == (GIL_SLD))) {
        if (((((((((((((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_FIGHTER)) && ((LOG_GETSTATUS(MIS_QA301)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_QA401)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_SUCCESS))) && ((QA401_FINISH) == (TRUE))) && ((QA401_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((QA301_FINISH) == (TRUE))) && ((QA301_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((KQ403_FINISH) == (TRUE))) && ((KQ403_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((HERO.GUILD) == (GIL_SLD))) || ((((((((((((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_ARCHER)) && ((LOG_GETSTATUS(MIS_QA302)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_QA401)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_SUCCESS))) && ((QA401_FINISH) == (TRUE))) && ((QA401_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((QA302_FINISH) == (TRUE))) && ((QA302_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((KQ403_FINISH) == (TRUE))) && ((KQ403_FINISH_DAY) <= ((WLD_GETDAY()) - (1)))) && ((HERO.GUILD) == (GIL_SLD)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void LORENZO_PROMOTIONTIERFINAL_PREPAREMASTER() {
    SQ503_GUILDFINALTIER = TRUE;
    SQ503_GUILDFINALTIER_DAY = WLD_GETDAY();
    if ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_ARCHER)) {
        MARVIN_ARAXOSSPECIALIZATION = ARAXOS_SPECIALIZATION_MASTERARCHER;
        B_STARTOTHERROUTINE(SLD_1017_GAROS, "PROMOTION");
        NPC_REFRESH(SLD_1017_GAROS);
        TELEPORTNPCTOWP(0xcb49, SLD_1017_GAROS.WP);
        PROMOTION_GAROS_RTNCHECK = 1;
    };
    MARVIN_ARAXOSSPECIALIZATION = ARAXOS_SPECIALIZATION_MASTERFIGHTER;
    B_STARTOTHERROUTINE(SLD_1000_ADELARD, "PROMOTION");
    NPC_REFRESH(SLD_1000_ADELARD);
    TELEPORTNPCTOWP(0xcb0a, SLD_1000_ADELARD.WP);
    PROMOTION_ADELARD_RTNCHECK = 1;
    B_GIVEPLAYERXP(XP_ARAXOS_PROMOTION_TIER3);
    SND_PLAY("LEVELUP");
}

func void DIA_LORENZO_PROMOTION_TIERFINAL_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_03");
    if ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_ARCHER)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Promotion_TierFinal_03_07");
    AI_RESETFACEANI(SELF);
    AI_FUNCTION(SELF, 0x11679);
}

instance DIA_LORENZO_AMBIENT(C_INFO) {
    NPC = 0xcb64;
    NR = 998;
    CONDITION = DIA_LORENZO_AMBIENT_CONDITION;
    INFORMATION = DIA_LORENZO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the situation?";
}

func int DIA_LORENZO_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11546)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_MISTAKE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_09");
}

func void DIA_LORENZO_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Ambient_15_00");
    if ((OTHER.GUILD) == (GIL_SLD)) {
        if ((KAPITEL) == (2)) {
            NPC_INITAMBIENTS(SELF, 2);
            if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
                AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_01");
            } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
                DIA_LORENZO_MISTAKE();
            };
        } else if ((KAPITEL) == (3)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_02");
        } else if ((KAPITEL) == (4)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_03");
        } else if ((KAPITEL) == (5)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_04");
        };
    };
    if ((OTHER.GUILD) != (GIL_SLD)) {
        if ((KAPITEL) == (2)) {
            NPC_INITAMBIENTS(SELF, 2);
            if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
                AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_05");
            } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
                DIA_LORENZO_MISTAKE();
            };
        } else if ((KAPITEL) == (3)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_06");
        } else if ((KAPITEL) == (4)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_07");
        } else if ((KAPITEL) == (5)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Ambient_14_08");
        };
    };
}

instance DIA_LORENZO_Q308_READYTOFINISH(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_Q308_READYTOFINISH_CONDITION;
    INFORMATION = DIA_LORENZO_Q308_READYTOFINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I managed to investigate the assassination attempt.";
}

func int DIA_LORENZO_Q308_READYTOFINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x144bb))) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_Q308_READYTOFINISH_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q308_ReadyToFinish_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q308_ReadyToFinish_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q308_ReadyToFinish_03_03");
    INFO_CLEARCHOICES(0x1167f);
    INFO_ADDCHOICE(0x1167f, "I'll check something else.", 0x11684);
    INFO_ADDCHOICE(0x1167f, "Let's go.", 0x11683);
}

var int LORENZO_Q308_READYTOGO = 0;
func void DIA_LORENZO_Q308_READYTOFINISH_LETSGO() {
    B_SAY(OTHER, SELF, "$MARVIN_LETSGO");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(0x1167f);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q308_WAITOLDTOWN");
    AI_FUNCTION(SELF, 0xf920);
}

func void DIA_LORENZO_Q308_READYTOFINISH_CHECK() {
    LORENZO_Q308_READYTOGO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_Q308_ReadyToFinish_Check_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_Q308_ReadyToFinish_Check_03_02");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x1167f);
}

instance DIA_LORENZO_Q308_READYTOFINISH_GO(C_INFO) {
    NPC = 0xcb64;
    NR = 1;
    CONDITION = DIA_LORENZO_Q308_READYTOFINISH_GO_CONDITION;
    INFORMATION = DIA_LORENZO_Q308_READYTOFINISH_GO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's go.";
}

func int DIA_LORENZO_Q308_READYTOFINISH_GO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1167f))) && ((LORENZO_Q308_READYTOGO) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_Q308_READYTOFINISH_GO_INFO() {
    DIA_LORENZO_Q308_READYTOFINISH_LETSGO();
}

instance DIA_LORENZO_LEAVEGUILD(C_INFO) {
    NPC = 0xcb64;
    NR = 980;
    CONDITION = DIA_LORENZO_LEAVEGUILD_CONDITION;
    INFORMATION = DIA_LORENZO_LEAVEGUILD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I'd like to end our cooperation.";
}

func int DIA_LORENZO_LEAVEGUILD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x139bd)) && ((HERO.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_LEAVEGUILD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_LeaveGuild_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuild_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuild_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuild_03_04");
    INFO_CLEARCHOICES(0x11688);
    INFO_ADDCHOICE(0x11688, "I need to think about that.", 0x1168b);
    INFO_ADDCHOICE(0x11688, "Yes, I am.", 0x1168c);
}

func void DIA_LORENZO_LEAVEGUILD_NO() {
    B_SAY(OTHER, SELF, "$MARVIN_QuestNotSure");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x11688);
}

func void DIA_LORENZO_LEAVEGUILD_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_LeaveGuild_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_LeaveGuild_Yes_03_02");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x11605);
}

instance DIA_LORENZO_PETRAATTACK(C_INFO) {
    NPC = 0xcb64;
    NR = 90;
    CONDITION = DIA_LORENZO_PETRAATTACK_CONDITION;
    INFORMATION = DIA_LORENZO_PETRAATTACK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Petra of the Merchant's Guild wanted to kill me.";
}

func int DIA_LORENZO_PETRAATTACK_CONDITION() {
    if (((PETRAKILLLETTER_READ) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 0x11546))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PETRAATTACK_INFO() {
    if ((NPC_HASITEMS(OTHER, 0x9bec)) >= (1)) {
        NPC_REMOVEINVITEM(SELF, 0x9bec);
        B_STANDUP();
        B_GIVEINVITEMS(OTHER, SELF, 0x9bec, 1);
        B_USEFAKESCROLL();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lorenzo_PetraAttack_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PetraAttack_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PetraAttack_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lorenzo_PetraAttack_03_04");
    AI_RESETFACEANI(SELF);
    B_GIVEPLAYERXP(XP_LORENZOPETRABONUS);
}

instance DIA_LORENZO_PICKPOCKET(C_INFO) {
    NPC = 0xcb64;
    NR = 900;
    CONDITION = DIA_LORENZO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LORENZO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_LORENZO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LORENZO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11690);
    INFO_ADDCHOICE(0x11690, DIALOG_BACK, 0x11694);
    INFO_ADDCHOICE(0x11690, DIALOG_PICKPOCKET, 0x11693);
}

func void DIA_LORENZO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x85a4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x85a4, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11690);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11690);
}

func void DIA_LORENZO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11690);
}

