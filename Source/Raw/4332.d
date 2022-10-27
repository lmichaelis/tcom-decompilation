var int SQ202_HELPFREDRIK = 0;
instance DIA_FREDRIK_EXIT(C_INFO) {
    NPC = 0xe15c;
    NR = 999;
    CONDITION = DIA_FREDRIK_EXIT_CONDITION;
    INFORMATION = DIA_FREDRIK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FREDRIK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FREDRIK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int FREDRIKARMOURBOUGHT = 0;
instance DIA_FREDRIK_AFTERBASTIAN(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_AFTERBASTIAN_CONDITION;
    INFORMATION = DIA_FREDRIK_AFTERBASTIAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Bastian mentioned that you had recently arrived in the village.";
}

func int DIA_FREDRIK_AFTERBASTIAN_CONDITION() {
    if (((BASTIANTOLDABOUTFREDRIKSTRADE) == (TRUE)) && ((CITYENTERED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_AFTERBASTIAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_Dia_Fredrik_AfterBastiane_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_Dia_Fredrik_AfterBastiane_03_02");
    INFO_CLEARCHOICES(0x15f98);
    INFO_ADDCHOICE(0x15f98, "My brother went missing recently, did you see anything suspicious?", 0x15f9b);
}

func void DIA_FREDRIK_AFTERBASTIAN_KNOWJORN() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_AfterBastian_KnowJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AfterBastian_KnowJorn_03_02");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AfterBastian_KnowJorn_03_03");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AfterBastian_KnowJorn_03_04");
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_AfterBastian_KnowJorn_15_05");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AfterBastian_KnowJorn_03_06");
    FREDRIKARMOURBOUGHT = FALSE;
}

instance DIA_FREDRIK_ARMOURSALE(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_ARMOURSALE_CONDITION;
    INFORMATION = DIA_FREDRIK_ARMOURSALE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What kind of goods do you offer?";
}

func int DIA_FREDRIK_ARMOURSALE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15f98)) && ((FREDRIKARMOURBOUGHT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_ARMOURSALE_INFO() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_ArmourSale_15_01");
    if ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourSale_03_02");
        AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourSale_03_03");
        AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourSale_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourSale_03_05");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourSale_03_06");
}

instance DIA_FREDRIK_ARMOURBUY(C_INFO) {
    NPC = 0xe15c;
    NR = 940;
    CONDITION = DIA_FREDRIK_ARMOURBUY_CONDITION;
    INFORMATION = DIA_FREDRIK_ARMOURBUY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BUYARMOR;
}

func int DIA_FREDRIK_ARMOURBUY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15f9c)) && ((FREDRIKARMOURBOUGHT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_ARMOURBUY_INFO() {
    INFO_CLEARCHOICES(0x15f9f);
    if ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_SUCCESS)) {
        INFO_ADDCHOICE(0x15f9f, TXT_ARMORTRADE_28, 0x15fa3);
    };
    INFO_ADDCHOICE(0x15f9f, TXT_ARMORTRADE_06, 0x15fa3);
    INFO_ADDCHOICE(0x15f9f, DIALOG_BACK, 0x15fa2);
}

func void DIA_FREDRIK_ARMOURBUY_BACK() {
    INFO_CLEARCHOICES(0x15f9f);
}

func void DIA_FREDRIK_ARMOURBUY_PAY() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_ArmourBUY_15_01");
    if ((((LOG_GETSTATUS(MIS_SQ202)) == (LOG_SUCCESS)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= ((VALUE_ITAR_CHAIN_L) / (2)))) || (((LOG_GETSTATUS(MIS_SQ202)) != (LOG_SUCCESS)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALUE_ITAR_CHAIN_L)))) {
        FREDRIKARMOURBOUGHT = TRUE;
        AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_ArmourBUY_03_02");
        if ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_SUCCESS)) {
        } else {
            AI_EQUIPARMOR(OTHER, 0x8a46);
        } else {
            INFO_CLEARCHOICES(0x15f9f);
        } else {
            /* set_instance(0) */;
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_FREDRIK_SQ202_START(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_SQ202_START_CONDITION;
    INFORMATION = DIA_FREDRIK_SQ202_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FREDRIK_SQ202_START_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x156a0)) && ((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_SQ202_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_03_01");
    INFO_CLEARCHOICES(0x15fa4);
    INFO_ADDCHOICE(0x15fa4, "Maybe it does. What's your point?", 0x15fad);
    INFO_ADDCHOICE(0x15fa4, "I agree, but there may be some problems with that.", 0x15fae);
}

var int FREDRIK_SQ202_ASK_GOODS = 0;
var int FREDRIK_SQ202_ASK_BUY = 0;
var int FREDRIK_SQ202_ASK_TRUST = 0;
func void DIA_FREDRIK_SQ202_CHOICES() {
    INFO_CLEARCHOICES(0x15fa4);
    if ((((FREDRIK_SQ202_ASK_GOODS) == (FALSE)) || ((FREDRIK_SQ202_ASK_BUY) == (FALSE))) || ((FREDRIK_SQ202_ASK_TRUST) == (FALSE))) {
        INFO_ADDCHOICE(0x15fa4, "(Ask)", 0x15fab);
    };
    if ((FREDRIK_SQ202_ASK_BUY) == (TRUE)) {
        INFO_ADDCHOICE(0x15fa4, "Here is the money for your goods. (150 GP)", 0x15fb5);
    };
    INFO_ADDCHOICE(0x15fa4, "I will find another way to get into the city.", 0x15fb4);
    INFO_ADDCHOICE(0x15fa4, "Okay, I'll help you find merchants.", 0x15fb0);
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_ASK() {
    INFO_CLEARCHOICES(0x15fa4);
    INFO_ADDCHOICE(0x15fa4, DIALOG_BACK, 0x15faa);
    if ((FREDRIK_SQ202_ASK_TRUST) == (FALSE)) {
        INFO_ADDCHOICE(0x15fa4, "You didn't think I could run off with the gold from the trade?", 0x15fb3);
    };
    if ((FREDRIK_SQ202_ASK_BUY) == (FALSE)) {
        INFO_ADDCHOICE(0x15fa4, "What if I were to buy the goods from you?", 0x15fb2);
    };
    if ((FREDRIK_SQ202_ASK_GOODS) == (FALSE)) {
        INFO_ADDCHOICE(0x15fa4, "What are these goods?", 0x15faf);
    };
}

func void DIA_FREDRIK_QUEST() {
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Problem_03_03");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Problem_03_04");
    DIA_FREDRIK_SQ202_CHOICES();
}

func void DIA_FREDRIK_SQ202_START_PROBLEM() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Problem_03_02");
    DIA_FREDRIK_QUEST();
}

func void DIA_FREDRIK_SQ202_START_YES() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Yes_03_03");
    DIA_FREDRIK_QUEST();
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_GOODS() {
    FREDRIK_SQ202_ASK_GOODS = TRUE;
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Goods_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Goods_03_02");
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_ALRIGHT() {
    SQ202_BOUGHTPACKET = 1;
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Alright_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_02");
    CREATEINVITEMS(SELF, 0x9102, 1);
    CREATEINVITEMS(SELF, 0x9105, 1);
    CREATEINVITEMS(SELF, 0x9107, 1);
    CREATEINVITEMS(SELF, 0x9109, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9109, 1);
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_03");
    B_GIVEINVITEMS(SELF, OTHER, 0x9107, 1);
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_04");
    B_GIVEINVITEMS(SELF, OTHER, 0x9105, 1);
    INFO_CLEARCHOICES(0x15fa4);
    B_GIVEINVITEMS(SELF, OTHER, 0x9102, 1);
    INFO_ADDCHOICE(0x15fa4, "What's in that package?", 0x15fb1);
    INFO_CLEARCHOICES(0x15fbc);
    INFO_ADDCHOICE(0x15fbc, "What's in that package?", 0x15fb1);
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_ALRIGHT_WHAT() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Alright_15_07");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_08");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_09");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_10");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_11");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Alright_03_12");
    LOG_CREATETOPIC(TOPIC_SQ202, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ202), TOPIC_SQ202, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_START);
    INFO_CLEARCHOICES(0x15fa4);
    INFO_CLEARCHOICES(0x15fbc);
    B_STARTOTHERROUTINE(MIL_707_HARRY, "SQ202");
    B_STARTOTHERROUTINE(BAU_11012_FARMER, "SQ202");
    NPC_EXCHANGEROUTINE(SELF, "TAVERN");
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_BUY() {
    FREDRIK_SQ202_ASK_BUY = TRUE;
    SQ202_BRINGGOLDFORFREDRIK = TRUE;
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Buy_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Buy_03_02");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Buy_03_03");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Buy_03_04");
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_TRUST() {
    FREDRIK_SQ202_ASK_TRUST = TRUE;
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_Trust_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_Trust_03_02");
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_NOTHANKS() {
    SQ202_HELPFREDRIK = TRUE;
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_NoThanks_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_NoThanks_03_02");
    INFO_CLEARCHOICES(0x15fa4);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

func void DIA_FREDRIK_SQ202_START_PROBLEM_BUY_YOURGOLD() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ202_BUYSTUFFFREDRIK)) {
        SQ202_BOUGHTPACKET = 2;
        AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_SQ202_Start_YourGold_15_01");
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ202_BUYSTUFFFREDRIK);
        AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_SQ202_Start_YourGold_03_02");
        CREATEINVITEMS(SELF, 0x9104, 1);
        CREATEINVITEMS(SELF, 0x9106, 1);
        CREATEINVITEMS(SELF, 0x9108, 1);
        CREATEINVITEMS(SELF, 0x910a, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x910a, 1);
        INFO_CLEARCHOICES(0x15fa4);
        B_GIVEINVITEMS(SELF, OTHER, 0x9108, 1);
        INFO_CLEARCHOICES(0x15fc5);
        B_GIVEINVITEMS(SELF, OTHER, 0x9106, 1);
        INFO_CLEARCHOICES(0x15fb9);
        B_GIVEINVITEMS(SELF, OTHER, 0x9104, 1);
        SQ202_FINISH_CHANGERTN();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    SQ202_HELPFREDRIK = TRUE;
    INFO_CLEARCHOICES(0x15fa4);
}

instance DIA_FREDRIK_Q201_HELP(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_Q201_HELP_CONDITION;
    INFORMATION = DIA_FREDRIK_Q201_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Now, about our deal...";
}

func int DIA_FREDRIK_Q201_HELP_CONDITION() {
    if (((SQ202_BOUGHTPACKET) == (2)) || ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_SUCCESS))) {
        if ((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_Q201_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_Q201_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_Q201_Help_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_Q201_Help_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_Q201_Help_03_14");
    SQ202_FREDRIKGOHOME = TRUE;
    SQ202_FREDRIKGOHOME_DAY = WLD_GETDAY();
}

instance DIA_FREDRIK_SQ202PAY(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_SQ202PAY_CONDITION;
    INFORMATION = DIA_FREDRIK_SQ202PAY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Here's the money. (150 GP)";
}

func int DIA_FREDRIK_SQ202PAY_CONDITION() {
    if (((((SQ202_BRINGGOLDFORFREDRIK) == (TRUE)) && ((SQ202_BOUGHTPACKET) == (0))) && (NPC_KNOWSINFO(OTHER, 0x15fa4))) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ202_BUYSTUFFFREDRIK))) {
        if ((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_SQ202PAY_INFO() {
    SQ202_BRINGGOLDFORFREDRIK = FALSE;
    SQ202_HELPFREDRIK = FALSE;
    DIA_FREDRIK_SQ202_START_PROBLEM_BUY_YOURGOLD();
}

instance DIA_FREDRIK_SQ202HELP(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_SQ202HELP_CONDITION;
    INFORMATION = DIA_FREDRIK_SQ202HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Okay, I'll help you find merchants.";
}

func int DIA_FREDRIK_SQ202HELP_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x15fa4)) && ((SQ202_HELPFREDRIK) == (TRUE))) && ((SQ202_BOUGHTPACKET) == (0))) {
        if ((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_SQ202HELP_INFO() {
    SQ202_BRINGGOLDFORFREDRIK = FALSE;
    SQ202_HELPFREDRIK = FALSE;
    DIA_FREDRIK_SQ202_START_PROBLEM_ALRIGHT();
}

instance DIA_FREDRIK_ARAXOS(C_INFO) {
    NPC = 0xe15c;
    NR = 2;
    CONDITION = DIA_FREDRIK_ARAXOS_CONDITION;
    INFORMATION = DIA_FREDRIK_ARAXOS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me more about the mercenaries.";
}

func int DIA_FREDRIK_ARAXOS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15fa4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_ARAXOS_INFO() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_Araxos_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_Araxos_03_02");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_Araxos_03_03");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_Araxos_03_04");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_Araxos_03_05");
}

instance DIA_FREDRIK_ARAXOSWORKER(C_INFO) {
    NPC = 0xe15c;
    NR = 3;
    CONDITION = DIA_FREDRIK_ARAXOSWORKER_CONDITION;
    INFORMATION = DIA_FREDRIK_ARAXOSWORKER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You work for the Merchant's Guild?";
}

func int DIA_FREDRIK_ARAXOSWORKER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15fbf)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_ARAXOSWORKER_INFO() {
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_AraxosWorker_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AraxosWorker_03_02");
    AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_AraxosWorker_15_03");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AraxosWorker_03_04");
    AI_OUTPUT(SELF, OTHER, "Dia_Fredrik_AraxosWorker_03_05");
}

instance DIA_FREDRIK_SQ202_FINISH(C_INFO) {
    NPC = 0xe15c;
    NR = 1;
    CONDITION = DIA_FREDRIK_SQ202_FINISH_CONDITION;
    INFORMATION = DIA_FREDRIK_SQ202_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FREDRIK_SQ202_FINISH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) {
        if (((((SQ202_FARMERGOODCOUNT) >= (10)) && ((SQ202_PFEFFERSOLD) > (0))) && ((SQ202_HAMMERSSOLD) > (0))) && ((SQ202_IRONSOLD) > (0))) {
            if ((SQ202_HARRYBUSTED) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_SQ202_FINISH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_03_03");
    if ((SQ202_FREDRIKSUSPICIOUS) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_03_07");
    INFO_CLEARCHOICES(0x15fc5);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ202_EARNEDGOLD)) {
        INFO_ADDCHOICE(0x15fc5, "(Give back gold collected from the trade)", 0x15fcc);
    };
    INFO_ADDCHOICE(0x15fc5, "There may be a problem with that.", 0x15fca);
}

func void DIA_FREDRIK_SQ202_FINISH_BADENDING() {
    LOG_SETSTATUS(_@(MIS_SQ202), TOPIC_SQ202, LOG_FAILED);
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_NoGold_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_NoGold_03_09");
    if ((SQ202_HARRYBUSTED) == (TRUE)) {
        B_STANDUP();
        AI_PLAYANI(SELF, T_SEARCH);
    };
    INFO_CLEARCHOICES(0x15fc5);
    INFO_CLEARCHOICES(0x15fcd);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    SQ202_FINISH_CHANGERTN();
    SQ202_EXCHANGEGOODS();
    SQ202_FREDRIKGOHOME = TRUE;
    SQ202_FREDRIKGOHOME_DAY = WLD_GETDAY();
}

func void DIA_FREDRIK_SQ202_FINISH_EXP() {
    B_GIVEPLAYERXP((XP_SQ202_FINISH) + ((SQ202_EARNEDGOLD) * (3)));
    INFO_CLEARCHOICES(0x15fa4);
    INFO_CLEARCHOICES(0x15fc5);
    INFO_CLEARCHOICES(0x15fb9);
}

func void DIA_FREDRIK_SQ202_FINISH_NOGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_NoGold_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_NoGold_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_NoGold_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_NoGold_03_04");
    if ((CITYENTERED) == (FALSE)) {
        AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED_V1);
    };
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED);
    DIA_FREDRIK_SQ202_FINISH_BADENDING();
}

func void FREDRIK_SQ202_FINISHQUEST() {
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ202), TOPIC_SQ202, LOG_SUCCESS);
    B_STARTOTHERROUTINE(BAU_11012_FARMER, START);
    B_STARTOTHERROUTINE(MIL_707_HARRY, START);
    GIVEREPUTATION_SILBACH();
}

func void DIA_FREDRIK_SQ202_FINISH_GIVEMONEY() {
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ202_EARNEDGOLD);
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_GiveMoney_15_01");
    if ((SQ202_EARNEDGOLD) < (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Finish_GiveMoney_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_04");
    };
    if (((SQ202_EARNEDGOLD) >= (50)) && ((SQ202_EARNEDGOLD) < (110))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_06");
    };
    if (((SQ202_EARNEDGOLD) >= (110)) && ((SQ202_EARNEDGOLD) < (200))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_07");
    };
    if ((SQ202_EARNEDGOLD) >= (200)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Finish_GiveMoney_03_08");
    };
    if ((SQ202_EARNEDGOLD) < (50)) {
        if ((CITYENTERED) == (FALSE)) {
            AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED_V1);
        } else {
            AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED);
        } else {
            DIA_FREDRIK_SQ202_FINISH_BADENDING();
        } else {
            /* set_instance(0) */;
        };
    };
    FREDRIK_SQ202_FINISHQUEST();
    DIA_FREDRIK_SQ202_FINISH_EXP();
}

instance DIA_FREDRIK_SQ202_FAILED(C_INFO) {
    NPC = 0xe15c;
    NR = 2;
    CONDITION = DIA_FREDRIK_SQ202_FAILED_CONDITION;
    INFORMATION = DIA_FREDRIK_SQ202_FAILED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FREDRIK_SQ202_FAILED_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((SQ202_HARRYBUSTED) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_SQ202_FAILED_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Failed_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Failed_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fredrik_SQ202_Failed_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fredrik_SQ202_Failed_03_04");
    if ((CITYENTERED) == (FALSE)) {
        AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED_V2);
    };
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED);
    DIA_FREDRIK_SQ202_FINISH_BADENDING();
}

instance DIA_FREDRIK_PICKPOCKET(C_INFO) {
    NPC = 0xe15c;
    NR = 900;
    CONDITION = DIA_FREDRIK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_FREDRIK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_FREDRIK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FREDRIK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15fd0);
    INFO_ADDCHOICE(0x15fd0, DIALOG_BACK, 0x15fd4);
    INFO_ADDCHOICE(0x15fd0, DIALOG_PICKPOCKET, 0x15fd3);
}

func void DIA_FREDRIK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15fd0);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15fd0);
}

func void DIA_FREDRIK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15fd0);
}

