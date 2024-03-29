instance DIA_HIERRO_EXIT(C_INFO) {
    NPC = 58607;
    NR = 999;
    CONDITION = DIA_HIERRO_EXIT_CONDITION;
    INFORMATION = DIA_HIERRO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HIERRO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HIERRO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HIERRO_DRAGONPOWDER(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_DRAGONPOWDER_CONDITION;
    INFORMATION = DIA_HIERRO_DRAGONPOWDER_INFO;
    IMPORTANT = FALSE;
    DESCRIPTION = "Tell me more about Dragon Dust.";
}

func int DIA_HIERRO_DRAGONPOWDER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83479)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_DRAGONPOWDER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_DragonPowder_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_DragonPowder_200_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_DragonPowder_200_02");
}

instance DIA_HIERRO_STANDRAGONPOWDER(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_STANDRAGONPOWDER_CONDITION;
    INFORMATION = DIA_HIERRO_STANDRAGONPOWDER_INFO;
    IMPORTANT = FALSE;
    DESCRIPTION = "I found this weird powder. Can you tell me what it is?";
}

func int DIA_HIERRO_STANDRAGONPOWDER_CONDITION() {
    if ((NPC_HASITEMS(OTHER, 37426)) > (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_STANDRAGONPOWDER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanDragonPowder_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanDragonPowder_200_01");
    B_GIVEINVITEMS(OTHER, SELF, 37426, 1);
    B_USEFAKEBAG_START();
    AI_WAIT(SELF, 1073741824);
    AI_PLAYANI(SELF, "R_CHECKPOCKET_SNIFF");
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanDragonPowder_200_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanDragonPowder_15_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanDragonPowder_200_03");
    B_USEFAKEBAG_END();
    B_GIVEINVITEMS(SELF, OTHER, 37426, 1);
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanDragonPowder_200_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanDragonPowder_15_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanDragonPowder_200_05");
    AI_RESETFACEANI(SELF);
    if (NPC_KNOWSINFO(OTHER, 83482)) {
        AI_LOGENTRY(TOPIC_Q303, LOG_Q303_RODRIGOPOISONSTAN);
    };
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_RODRIGOPOISON);
}

instance DIA_HIERRO_STANSTEWINVESTIGATION(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_STANSTEWINVESTIGATION_CONDITION;
    INFORMATION = DIA_HIERRO_STANSTEWINVESTIGATION_INFO;
    IMPORTANT = TRUE;
}

func int DIA_HIERRO_STANSTEWINVESTIGATION_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 83485)) && ((NPC_GETDISTTOWP(SELF, "PART17_HAVEN_HUT5_ALCHEMY_01")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_STANSTEWINVESTIGATION_INFO() {
    AI_GOTOWP(OTHER, "P17_HAVEN_UP_10");
    B_TURNTONPC(OTHER, SELF);
    AI_USEMOB(SELF, "LATI", 1);
    AI_WAIT(SELF, 1092616192);
    AI_USEMOB(SELF, "LATI", -(1));
    B_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanStewInvestigation_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanStewInvestigation_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanStewInvestigation_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanStewInvestigation_200_07");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_OSCARMISTAKE);
    NPC_EXCHANGEROUTINE(NOV_200_HIERRO, "Alchemy");
}

instance DIA_HIERRO_STANCORTEZAGREE(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_STANCORTEZAGREE_CONDITION;
    INFORMATION = DIA_HIERRO_STANCORTEZAGREE_INFO;
    IMPORTANT = FALSE;
    DESCRIPTION = "Cortez agreed to your proposal on two conditions.";
}

func int DIA_HIERRO_STANCORTEZAGREE_CONDITION() {
    if ((DIA_CORTEZ_STANHIERRO_INFO_NOPERM) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_STANCORTEZAGREE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanCortezAgree_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanCortezAgree_200_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanCortezAgree_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanCortezAgree_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanCortezAgree_200_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanCortezAgree_200_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanCortezAgree_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanCortezAgree_200_04");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_HIERROINSPECTOR);
    NPC_EXCHANGEROUTINE(NOV_200_HIERRO, "GuideToAlchemy");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HIERRO_STANPOISON(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_STANPOISON_CONDITION;
    INFORMATION = DIA_HIERRO_STANPOISON_INFO;
    IMPORTANT = FALSE;
    DESCRIPTION = "Do you know anything about Stan's murder?";
}

func int DIA_HIERRO_STANPOISON_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 48936)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_STANPOISON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_StanPoison_200_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_StanPoison_15_06");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_ASKCORTEZ);
}

instance DIA_HIERRO_FIRSTTALK(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_FIRSTTALK_CONDITION;
    INFORMATION = DIA_HIERRO_FIRSTTALK_INFO;
    IMPORTANT = TRUE;
}

func int DIA_HIERRO_FIRSTTALK_CONDITION() {
    return TRUE;
}

func void DIA_HIERRO_FIRSTTALK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Firsttalk_200_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Firsttalk_200_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Firsttalk_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Firsttalk_200_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Firsttalk_15_05");
}

instance DIA_HIERRO_AREYOUNOVICE(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_AREYOUNOVICE_CONDITION;
    INFORMATION = DIA_HIERRO_AREYOUNOVICE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you a novice?";
}

func int DIA_HIERRO_AREYOUNOVICE_CONDITION() {
    return TRUE;
}

func void DIA_HIERRO_AREYOUNOVICE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Areyounovice_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Areyounovice_200_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Areyounovice_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Areyounovice_200_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Areyounovice_200_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Areyounovice_200_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Areyounovice_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Areyounovice_200_13");
}

instance DIA_HIERRO_WHATAREYOUDOING(C_INFO) {
    NPC = 58607;
    NR = 2;
    CONDITION = DIA_HIERRO_WHATAREYOUDOING_CONDITION;
    INFORMATION = DIA_HIERRO_WHATAREYOUDOING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_HIERRO_WHATAREYOUDOING_CONDITION() {
    return TRUE;
}

func void DIA_HIERRO_WHATAREYOUDOING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Whatareyoudoing_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Whatareyoudoing_200_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Whatareyoudoing_200_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Whatareyoudoing_200_17");
}

instance DIA_HIERRO_ESCAPE(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_ESCAPE_CONDITION;
    INFORMATION = DIA_HIERRO_ESCAPE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How did you escape from the monastery?";
}

func int DIA_HIERRO_ESCAPE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83497)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_ESCAPE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Escape_15_18");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Escape_200_19");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Escape_200_20");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Escape_15_21");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Escape_200_22");
}

instance DIA_HIERRO_CANYOUTEACH(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_HIERRO_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something about magic?";
}

func int DIA_HIERRO_CANYOUTEACH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83500)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_CanYouTeach_15_18");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_CanYouTeach_200_19");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_CanYouTeach_200_20");
    LOG_CREATETOPIC(TOPIC_HAVENTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_HAVENTEACHER, LOG_HAVENTEACHER_HIERRO);
}

var int HIERROCURRENTMANALEVEL;
var int HIERRO_NOMORE;
var string HIERRO_PRINTS;
instance DIA_HIERRO_TEACH(C_INFO) {
    NPC = 58607;
    NR = 99;
    CONDITION = DIA_HIERRO_TEACH_CONDITION;
    INFORMATION = DIA_HIERRO_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Increase my magic power.";
}

func int DIA_HIERRO_TEACH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 83503)) && ((HIERRO_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_TEACH_CHOICES() {
    var int HIERRO_GOLDCOST;
    HIERRO_GOLDCOST = 20;
    HIERROCURRENTMANALEVEL = OTHER.AIVAR[83];
    INFO_CLEARCHOICES(83509);
    INFO_ADDCHOICE(83509, DIALOG_BACK, 83514);
    INFO_ADDCHOICE(83509, B_BUILDLEARNSTRING2(PRINT_LEARNMANA1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_MANA_MAX, 1), HIERRO_GOLDCOST), 83515);
    INFO_ADDCHOICE(83509, B_BUILDLEARNSTRING2(PRINT_LEARNMANA5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_MANA_MAX, 5), (HIERRO_GOLDCOST) * (5)), 83516);
}

func void DIA_HIERRO_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_TEACH_15_00");
    if ((OTHER.AIVAR[83]) < (90)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_TEACH_200_01");
        DIA_HIERRO_TEACH_CHOICES();
    };
    if ((OTHER.AIVAR[83]) >= (90)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_TEACH_200_02");
        HIERRO_NOMORE = TRUE;
    };
}

func void DIA_HIERRO_TEACH_BACK() {
    INFO_CLEARCHOICES(83509);
}

func void DIA_HIERRO_TEACH1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (HIERRO_PAYMENT1)) {
        if ((HIERROCURRENTMANALEVEL) < (OTHER.AIVAR[83])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, HIERRO_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 34203, HIERRO_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_MANA_MAX, 1, 90);
        DIA_HIERRO_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (HIERRO_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Teach1_200_01");
        HIERRO_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(HIERRO_PAYMENT1));
        PRINTSCREEN(HIERRO_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_HIERRO_TEACH_CHOICES();
    };
}

func void DIA_HIERRO_TEACH5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (HIERRO_PAYMENT5)) {
        if ((HIERROCURRENTMANALEVEL) < (OTHER.AIVAR[83])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, HIERRO_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 34203, HIERRO_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_MANA_MAX, 5, 90);
        DIA_HIERRO_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (HIERRO_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Teach5_200_01");
        HIERRO_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(HIERRO_PAYMENT5));
        PRINTSCREEN(HIERRO_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_HIERRO_TEACH_CHOICES();
    };
}

instance DIA_HIERRO_NOVICELIFE(C_INFO) {
    NPC = 58607;
    NR = 2;
    CONDITION = DIA_HIERRO_NOVICELIFE_CONDITION;
    INFORMATION = DIA_HIERRO_NOVICELIFE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is life like for a novice?";
}

func int DIA_HIERRO_NOVICELIFE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83497)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_NOVICELIFE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Novicelife_15_24");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Novicelife_200_25");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Novicelife_200_26");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Novicelife_200_27");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Novicelife_200_28");
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Novicelife_15_29");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Novicelife_200_30");
}

instance DIA_HIERRO_PREPAREPOISON(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_PREPAREPOISON_CONDITION;
    INFORMATION = DIA_HIERRO_PREPAREPOISON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know how to make potions?";
}

func int DIA_HIERRO_PREPAREPOISON_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 84287)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) {
        if ((Q307_WECRATEDPOTION) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_PREPAREPOISON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_PreparePoison_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_03_03");
    INFO_CLEARCHOICES(83520);
    INFO_ADDCHOICE(83520, "I need to get a very strong poison.", 83523);
}

func void DIA_HIERRO_PREPAREPOISON_POISON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_PreparePoison_Poison_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Poison_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Poison_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Poison_03_04");
    INFO_CLEARCHOICES(83520);
    INFO_ADDCHOICE(83520, "As for the orc.", 83525);
    INFO_ADDCHOICE(83520, "As for the troll.", 83526);
}

func void DIA_HIERRO_PREPAREPOISON_POISON_TROLL_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Next_03_06");
    INFO_CLEARCHOICES(83520);
    INFO_ADDCHOICE(83520, "Okay, what do you need?", 83528);
}

func void DIA_HIERRO_PREPAREPOISON_POISON_ORC() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_PreparePoison_Orc_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Orc_03_02");
    DIA_HIERRO_PREPAREPOISON_POISON_TROLL_NEXT();
}

func void DIA_HIERRO_PREPAREPOISON_POISON_TROLL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_PreparePoison_Troll_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Troll_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Troll_03_03");
    DIA_HIERRO_PREPAREPOISON_POISON_TROLL_NEXT();
}

func void DIA_HIERRO_PREPAREPOISON_END() {
    AI_LOGENTRY(TOPIC_Q307, LOG_Q307_HIERRO);
    INFO_CLEARCHOICES(83520);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_HIERRO_PREPAREPOISON_POISON_TROLL_NEXT_NEED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_PreparePoison_Need_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Need_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_PreparePoison_Need_03_03");
    DIA_HIERRO_PREPAREPOISON_END();
}

instance DIA_HIERRO_Q307_NOTIME(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_Q307_NOTIME_CONDITION;
    INFORMATION = DIA_HIERRO_Q307_NOTIME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where can I find the ingredients?";
}

func int DIA_HIERRO_Q307_NOTIME_CONDITION() {
    if (((((NPC_KNOWSINFO(OTHER, 83520)) && ((NPC_KNOWSINFO(OTHER, 83532)) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) && ((C_GOTINGRENDIENTS_Q307_POISONBEN(HERO)) == (FALSE))) && ((Q307_WECRATEDPOTION) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_Q307_NOTIME_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Q307_NoTime_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Q307_NoTime_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Q307_NoTime_03_03");
    AI_LOGENTRY(TOPIC_Q307, LOG_Q307_HIERROWHERESEARCH);
}

instance DIA_HIERRO_MAKEPOISON(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_MAKEPOISON_CONDITION;
    INFORMATION = DIA_HIERRO_MAKEPOISON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have all the ingredients.";
}

func int DIA_HIERRO_MAKEPOISON_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 83520)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) {
        if (C_GOTINGRENDIENTS_Q307_POISONBEN(HERO)) {
            if ((Q307_WECRATEDPOTION) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_MAKEPOISON_INFO() {
    NPC_REMOVEINVITEMS(SELF, 34272, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_MakePoison_15_01");
    NPC_REMOVEINVITEMS(SELF, 33869, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_MakePoison_03_02");
    NPC_REMOVEINVITEMS(SELF, 33856, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_MakePoison_03_03");
    B_GIVEINVITEMS(OTHER, SELF, 34272, 2);
    AI_LOGENTRY(TOPIC_Q307, LOG_Q307_HIERROITEMS);
    B_GIVEINVITEMS(OTHER, SELF, 33869, 4);
    AI_STOPPROCESSINFOS(SELF);
    B_GIVEINVITEMS(OTHER, SELF, 33856, 1);
    NPC_EXCHANGEROUTINE(SELF, "RunAlchemy");
}

instance DIA_HIERRO_POISON(C_INFO) {
    NPC = 58607;
    NR = 1;
    CONDITION = DIA_HIERRO_POISON_CONDITION;
    INFORMATION = DIA_HIERRO_POISON_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HIERRO_POISON_CONDITION() {
    if (((((NPC_KNOWSINFO(OTHER, 83532)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) && (NPC_ISINSTATE(SELF, 61599))) && ((Q307_HIERRONEARALCHEMY) == (TRUE))) && ((Q307_POISONFROMHIERRO) == (FALSE))) {
        if ((Q307_WECRATEDPOTION) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_POISON_INFO() {
    if ((NPC_REFUSETALK(SELF)) == (FALSE)) {
        Q307_POISONFROMHIERRO = TRUE;
        CREATEINVITEMS(SELF, 36950, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36950, 1);
        CREATEINVITEMS(SELF, 36951, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36951, 1);
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Poison_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Poison_15_03");
        AI_LOGENTRY(TOPIC_Q307, LOG_Q307_HIERROPOISON);
        NPC_EXCHANGEROUTINE(SELF, "TAVERN");
    };
    if ((NPC_GETDISTTOWP(SELF, "PART17_HAVEN_HUT5_ALCHEMY_01")) <= (500)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Poison_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Poison_03_05");
    AI_STOPPROCESSINFOS(SELF);
}

var int HIERRO_ALCHEMYAMBIENT;
instance DIA_HIERRO_AMBIENT(C_INFO) {
    NPC = 58607;
    NR = 997;
    CONDITION = DIA_HIERRO_AMBIENT_CONDITION;
    INFORMATION = DIA_HIERRO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_HIERRO_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83497)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_Ambient_15_00");
    if (((HIERRO_ALCHEMYAMBIENT) == (TRUE)) && ((HIERRO_ALCHEMYAMBIENT) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Ambient_200_00");
        HIERRO_ALCHEMYAMBIENT = TRUE;
    };
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Ambient_200_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Ambient_200_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hierro_Ambient_200_03");
    };
}

instance DIA_HIERRO_TRADE(C_INFO) {
    NPC = 58607;
    NR = 10;
    CONDITION = DIA_HIERRO_TRADE_CONDITION;
    INFORMATION = DIA_HIERRO_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's deal.";
}

func int DIA_HIERRO_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83494)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_TRADE_INFO() {
    var int HIERRO_TRADE_CHECKINFO;
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
    if ((HIERRO_TRADE_CHECKINFO) == (FALSE)) {
        HIERRO_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_HAVENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_HAVENTRADER, LOG_TRADER_HIERRO);
    };
}

instance DIA_HIERRO_TEACH_ALCHEMY(C_INFO) {
    NPC = 58607;
    NR = 7;
    CONDITION = DIA_HIERRO_TEACH_ALCHEMY_CONDITION;
    INFORMATION = DIA_HIERRO_TEACH_ALCHEMY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_ALCHEMY1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_ALCHEMY, 1), HIERRO_ALCHEMY);
}

func int DIA_HIERRO_TEACH_ALCHEMY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 83503)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_TEACH_ALCHEMY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hierro_teach_alchemy_15_00");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (HIERRO_ALCHEMY)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (1)) {
            NPC_REMOVEINVITEMS(SELF, 34203, HIERRO_ALCHEMY);
            AI_OUTPUT(SELF, OTHER, "DIA_Hierro_teach_alchemy_200_01");
            B_GIVEINVITEMS(OTHER, SELF, 34203, HIERRO_ALCHEMY);
            AI_OUTPUT(SELF, OTHER, "DIA_Hierro_teach_alchemy_200_02");
            HIERRO_ALCHEMYAMBIENT = TRUE;
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Hierro_teach_alchemy_200_03");
}

instance DIA_HIERRO_PICKPOCKET(C_INFO) {
    NPC = 58607;
    NR = 900;
    CONDITION = DIA_HIERRO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HIERRO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_HIERRO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HIERRO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(83549);
    INFO_ADDCHOICE(83549, DIALOG_BACK, 83553);
    INFO_ADDCHOICE(83549, DIALOG_PICKPOCKET, 83552);
}

func void DIA_HIERRO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35989, 9);
        B_GIVEINVITEMS(SELF, OTHER, 35989, 9);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(83549);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(83549);
}

func void DIA_HIERRO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(83549);
}

