var int WHEELPRICE = 0;
instance DIA_SALZER_EXIT(C_INFO) {
    NPC = 0xd9e9;
    NR = 999;
    CONDITION = DIA_SALZER_EXIT_CONDITION;
    INFORMATION = DIA_SALZER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SALZER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SALZER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SALZER_SQ201_START(C_INFO) {
    NPC = 0xd9e9;
    NR = 998;
    CONDITION = DIA_SALZER_SQ201_START_CONDITION;
    INFORMATION = DIA_SALZER_SQ201_START_INFO;
    IMPORTANT = TRUE;
}

var int FORWHEEL30 = 0;
var int FORWHEEL50 = 0;
var int NOTHINGFORWHEEL = 0;
func int DIA_SALZER_SQ201_START_CONDITION() {
    if ((KAPITEL) <= (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_SQ201_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_14_01");
    INFO_CLEARCHOICES(0x11754);
    INFO_ADDCHOICE(0x11754, "I think the sun burned your head too much because you're ranting.", 0x1175d);
    INFO_ADDCHOICE(0x11754, "Do I look like someone who carries unnecessary stuff?", 0x1175c);
    INFO_ADDCHOICE(0x11754, "A wheel?", 0x1175b);
}

func void DIA_SALZER_SQ201_START_NEXT() {
    INFO_CLEARCHOICES(0x11754);
    INFO_ADDCHOICE(0x11754, "(Hear out)", 0x1175e);
}

func void DIA_SALZER_SQ201_START_WHEEL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_wheel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_wheel_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_wheel_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_wheel_14_04");
    DIA_SALZER_SQ201_START_NEXT();
}

func void DIA_SALZER_SQ201_START_ITEMS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_items_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_items_14_02");
    DIA_SALZER_SQ201_START_NEXT();
}

func void DIA_SALZER_SQ201_START_HEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_head_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_head_14_02");
    DIA_SALZER_SQ201_START_NEXT();
}

func void DIA_SALZER_SQ201_START_LISTEN() {
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_listen_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_listen_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_listen_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_listen_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_listen_14_05");
    INFO_CLEARCHOICES(0x11754);
    INFO_ADDCHOICE(0x11754, "I don't have time for that right now.", 0x11760);
    INFO_ADDCHOICE(0x11754, "I'll look for that wheel for you.", 0x11763);
}

var int SQ201_TAKEQUEST = 0;
func void DIA_SALZER_SQ201_START_NOTIME() {
    SQ201_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_notime_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_notime_14_02");
    AI_STOPPROCESSINFOS(SELF);
}

var int SALZER_SQ201_START_SMALLFEE = 0;
func void DIA_SALZER_SQ201_START_CHOICES() {
    INFO_CLEARCHOICES(0x11754);
    INFO_ADDCHOICE(0x11754, "Keep your gold, I'll help you for free.", 0x11765);
    if ((SALZER_SQ201_START_SMALLFEE) == (FALSE)) {
        INFO_ADDCHOICE(0x11754, "How about 50 gold pieces?", 0x11766);
        INFO_ADDCHOICE(0x11754, "100 gold pieces.", 0x11769);
    };
    INFO_ADDCHOICE(0x11754, "Okay, make it 30.", 0x11767);
    INFO_ADDCHOICE(0x11754, "You won't get your wheel for less than 50 gold pieces.", 0x11768);
    INFO_CLEARCHOICES(0x1176a);
    INFO_ADDCHOICE(0x1176a, "Keep your gold, I'll help you for free.", 0x11765);
    if ((SALZER_SQ201_START_SMALLFEE) == (FALSE)) {
        INFO_ADDCHOICE(0x1176a, "How about 50 gold pieces?", 0x11766);
        INFO_ADDCHOICE(0x1176a, "100 gold pieces.", 0x11769);
    };
    INFO_ADDCHOICE(0x1176a, "Okay, make it 30.", 0x11767);
    INFO_ADDCHOICE(0x1176a, "You won't get your wheel for less than 50 gold pieces.", 0x11768);
}

func void DIA_SALZER_SQ201_START_WILLLOOK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_14_02");
    DIA_SALZER_SQ201_START_CHOICES();
}

func void DIA_SALZER_SQ201_STARTQUEST() {
    LOG_CREATETOPIC(TOPIC_SQ201, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ201), TOPIC_SQ201, LOG_RUNNING);
    if ((NOTHINGFORWHEEL) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_START_V1);
    };
    AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_START_V2);
    INFO_CLEARCHOICES(0x11754);
    INFO_CLEARCHOICES(0x1176a);
}

func void DIA_SALZER_SQ201_START_WILLLOOK_FORFREE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_forfree_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_forfree_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_forfree_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_forfree_14_04");
    NOTHINGFORWHEEL = TRUE;
    DIA_SALZER_SQ201_STARTQUEST();
}

func void DIA_SALZER_SQ201_START_WILLLOOK_SMALLFEE() {
    SALZER_SQ201_START_SMALLFEE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_smallfee_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_smallfee_14_02");
    DIA_SALZER_SQ201_START_CHOICES();
}

func void DIA_SALZER_SQ201_START_WILLLOOK_SMALLFEE_OK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_smallfee_ok_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_smallfee_ok_14_02");
    FORWHEEL30 = TRUE;
    DIA_SALZER_SQ201_STARTQUEST();
}

func void DIA_SALZER_SQ201_START_WILLLOOK_SMALLFEE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_smallfee_no_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_smallfee_no_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_smallfee_ok_14_02");
    FORWHEEL50 = TRUE;
    DIA_SALZER_SQ201_STARTQUEST();
}

func void DIA_SALZER_SQ201_START_WILLLOOK_BIGFEE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Start_willlook_bigfee_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Start_willlook_bigfee_14_02");
}

instance DIA_SALZER_SQ201_TAKEQUEST(C_INFO) {
    NPC = 0xd9e9;
    NR = 1;
    CONDITION = DIA_SALZER_SQ201_TAKEQUEST_CONDITION;
    INFORMATION = DIA_SALZER_SQ201_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll look for that wheel for you.";
}

func int DIA_SALZER_SQ201_TAKEQUEST_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x11754)) && ((SQ201_TAKEQUEST) == (TRUE))) && ((KAPITEL) <= (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_SQ201_TAKEQUEST_INFO() {
    DIA_SALZER_SQ201_START_WILLLOOK();
}

instance DIA_SALZER_SQ201_WHEEL(C_INFO) {
    NPC = 0xd9e9;
    NR = 998;
    CONDITION = DIA_SALZER_SQ201_WHEEL_CONDITION;
    INFORMATION = DIA_SALZER_SQ201_WHEEL_INFO;
    DESCRIPTION = "This wheel should fit your wagon.";
}

func int DIA_SALZER_SQ201_WHEEL_CONDITION() {
    if ((((NPC_HASITEMS(OTHER, 0x9121)) > (0)) && ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_RUNNING))) && ((KAPITEL) <= (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_SQ201_WHEEL_ASKFAVOR() {
    INFO_ADDCHOICE(0x1176d, "There's something I'd like to ask you.", 0x11774);
}

func void DIA_SALZER_SQ201_WHEEL_INFO() {
    AI_STOPLOOKAT(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9121, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_14_02");
    B_STANDUP();
    AI_GOTOWP(SELF, "PART4_REPAIR");
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_14_06");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(OTHER, SELF);
    if ((NOTHINGFORWHEEL) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_14_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_14_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_14_05");
    SQ201_SALZER_GIVEGOLD();
    INFO_CLEARCHOICES(0x1176d);
    INFO_ADDCHOICE(0x1176d, "It's a pleasure doing business with you.", 0x1177b);
    if (((FORWHEEL30) == (TRUE)) || ((FORWHEEL50) == (TRUE))) {
        if ((((CITYENTERED) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
            INFO_ADDCHOICE(0x1176d, "Keep the gold for yourself.", 0x11771);
        };
    };
    INFO_ADDCHOICE(0x1176d, "Maybe I'll take the gold after all.", 0x11773);
    if ((((CITYENTERED) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
        DIA_SALZER_SQ201_WHEEL_ASKFAVOR();
    };
}

func void DIA_SALZER_SQ201_WHEEL_KEEPGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_keepgold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_keepgold_14_02");
    INFO_CLEARCHOICES(0x1176d);
    DIA_SALZER_SQ201_WHEEL_ASKFAVOR();
}

var int SQ201_SALZER_DIDNTASKFORHELP = 0;
func void DIA_SALZER_SQ201_WHEEL_MAYBEGOLD() {
    SQ201_SALZER_DIDNTASKFORHELP = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_Maybegold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Maybegold_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Maybegold_14_03");
    CREATEINVITEMS(SELF, 0x859b, SQ201_REWARD_V3);
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_RUNNING)) {
        SQ201_FINISHQUEST();
        AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_V3);
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ201_REWARD_V3);
    INFO_CLEARCHOICES(0x1176d);
    INFO_CLEARCHOICES(0x11781);
}

func void DIA_SALZER_SQ201_WHEEL_FAVOR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_Favor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_Favor_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_06");
    B_STANDUP();
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_Favor_14_08");
    INFO_CLEARCHOICES(0x1176d);
    INFO_ADDCHOICE(0x1176d, "It seems pretty risky, what if we get caught?", 0x11775);
    INFO_ADDCHOICE(0x1176d, "What's in it for you?", 0x11776);
    INFO_CLEARCHOICES(0x11781);
    INFO_ADDCHOICE(0x11781, "It seems pretty risky, what if we get caught?", 0x11775);
    INFO_ADDCHOICE(0x11781, "What's in it for you?", 0x11776);
}

func void DIA_SALZER_SQ201_WHEEL_RISK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_risk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_risk_14_02");
}

func void DIA_SALZER_SQ201_WHEEL_YOURGAIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_yourgain_15_01");
    if ((NOTHINGFORWHEEL) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_yourgain_14_02");
    };
    if (((FORWHEEL30) == (TRUE)) || ((FORWHEEL50) == (TRUE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_yourgain_14_03");
    };
    if (((((FORWHEEL30) == (TRUE)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ201_REWARD_V1))) || (((FORWHEEL50) == (TRUE)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ201_REWARD_V2)))) || ((NOTHINGFORWHEEL) == (TRUE))) {
        INFO_ADDCHOICE(0x1176d, "All right, then, let's go.", 0x1177a);
        INFO_ADDCHOICE(0x11781, "All right, then, let's go.", 0x1177a);
    };
    INFO_ADDCHOICE(0x1176d, "I think I'll look for another way into the city.", 0x1177d);
    INFO_ADDCHOICE(0x11781, "I think I'll look for another way into the city.", 0x1177d);
}

func void DIA_SALZER_SQ201_GOTOCITY() {
    SQ201_SALZER_CANUSEBARREL = TRUE;
    MOB_CHANGEFOCUSNAME("SQ201_BARREL", "MOBNAME_SQ201_BARREL");
}

func void DIA_SALZER_SQ201_WHEEL_LETSGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_letsgo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_letsgo_14_02");
    SQ201_FINISHQUEST();
    AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_V1);
    DIA_SALZER_SQ201_GOTOCITY();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SALZER_SQ201_WHEEL_PREPAREYOURSELF() {
    if ((FORWHEEL30) == (TRUE)) {
    };
    if ((FORWHEEL50) == (TRUE)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ201_REWARD_V2);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_letsgo_pay_14_02");
    DIA_SALZER_SQ201_GOTOCITY();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SALZER_SQ201_WHEEL_LETSGO_PAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_letsgo_pay_15_01");
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_RUNNING)) {
        SQ201_FINISHQUEST();
        AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_V2);
    };
    DIA_SALZER_SQ201_WHEEL_PREPAREYOURSELF();
}

func void DIA_SALZER_SQ201_WHEEL_PAY() {
    SQ201_SALZER_DIDNTASKFORHELP = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_pay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_pay_14_02");
    SQ201_FINISHQUEST();
    AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_V3);
}

var int SALZER_SQ201_REFUSEUSEBARREL = 0;
func void DIA_SALZER_SQ201_WHEEL_ANOTHERWAY() {
    SALZER_SQ201_REFUSEUSEBARREL = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_Wheel_anotherway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_SQ201_Wheel_anotherway_14_02");
    INFO_CLEARCHOICES(0x1176d);
    INFO_CLEARCHOICES(0x11781);
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_RUNNING)) {
        SQ201_FINISHQUEST();
        AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_V3);
    };
}

instance DIA_SALZER_SQ201_USEBARREL(C_INFO) {
    NPC = 0xd9e9;
    NR = 1;
    CONDITION = DIA_SALZER_SQ201_USEBARREL_CONDITION;
    INFORMATION = DIA_SALZER_SQ201_USEBARREL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind. I'll go into the city with you.";
}

func int DIA_SALZER_SQ201_USEBARREL_CONDITION() {
    if ((((((((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) && ((SALZER_SQ201_REFUSEUSEBARREL) == (TRUE))) && ((SQ201_SALZER_GOTOCITY) == (1))) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) && ((CITYENTERED) == (FALSE))) && ((KAPITEL) <= (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_SQ201_USEBARREL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_SQ201_UseBarrel_15_01");
    DIA_SALZER_SQ201_WHEEL_PREPAREYOURSELF();
}

instance DIA_SALZER_SQ201_TOCITYFAVOR(C_INFO) {
    NPC = 0xd9e9;
    NR = 1;
    CONDITION = DIA_SALZER_SQ201_TOCITYFAVOR_CONDITION;
    INFORMATION = DIA_SALZER_SQ201_TOCITYFAVOR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "There's something I'd like to ask you.";
}

func int DIA_SALZER_SQ201_TOCITYFAVOR_CONDITION() {
    if (((((((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((SQ201_SALZER_DIDNTASKFORHELP) == (TRUE))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) && ((CITYENTERED) == (FALSE))) && ((KAPITEL) <= (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_SQ201_TOCITYFAVOR_INFO() {
    DIA_SALZER_SQ201_WHEEL_FAVOR();
}

instance DIA_SALZER_Q201_CITY(C_INFO) {
    NPC = 0xd9e9;
    NR = 998;
    CONDITION = DIA_SALZER_Q201_CITY_CONDITION;
    INFORMATION = DIA_SALZER_Q201_CITY_INFO;
    IMPORTANT = TRUE;
}

func int DIA_SALZER_Q201_CITY_CONDITION() {
    if ((SQ201_SALZER_INCITY) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_Q201_CITY_INFO() {
    Q204_ARAXOSGUILDREPUTATION = (Q204_ARAXOSGUILDREPUTATION) + (1);
    PRINTD("+1 rep do Gildi Araxos");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Q201_City_14_06");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "CITY");
}

instance DIA_SALZER_AMBIENT(C_INFO) {
    NPC = 0xd9e9;
    NR = 1;
    CONDITION = DIA_SALZER_AMBIENT_CONDITION;
    INFORMATION = DIA_SALZER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_SALZER_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_SALZER_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_Ambient_15_01");
    if ((KAPITEL) <= (2)) {
        if ((LOG_GETSTATUS(MIS_SQ201)) != (LOG_SUCCESS)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Ambient_03_02");
        } else if (((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) && ((SQ201_SALZER_INCITY) != (TRUE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Ambient_03_03");
        } else if (((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) && ((SQ201_SALZER_INCITY) == (TRUE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Ambient_03_04");
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ201)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Ambient_03_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_Ambient_03_06");
}

instance DIA_SALZER_WHEELTRADESTART(C_INFO) {
    NPC = 0xd9e9;
    NR = 1;
    CONDITION = DIA_SALZER_WHEELTRADESTART_CONDITION;
    INFORMATION = DIA_SALZER_WHEELTRADESTART_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SALZER_WHEELTRADESTART_CONDITION() {
    if ((KAPITEL) == (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_WHEELTRADESTART_CONTINUE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Continue_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Continue_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Continue_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Continue_03_04");
    LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_BARTER, LOG_CITYBARTER_SALZER);
}

func void DIA_SALZER_WHEELTRADESTART_INFO() {
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) {
        WHEELPRICE = SALZER_WHEELPRICEV2;
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_03_03");
        DIA_SALZER_WHEELTRADESTART_CONTINUE();
    };
    WHEELPRICE = SALZER_WHEELPRICEV1;
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_03_05");
    INFO_CLEARCHOICES(0x1178a);
    INFO_ADDCHOICE(0x1178a, "No.", 0x1178e);
}

func void DIA_SALZER_WHEELTRADESTART_NOPE() {
    B_SAY(OTHER, SELF, "$MARVIN_No");
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ201, LOG_SQ201_FINISH_FAIL);
        LOG_SETSTATUS(_@(MIS_SQ201), TOPIC_SQ201, LOG_FAILED);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Nope_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeStart_Nope_03_03");
    DIA_SALZER_WHEELTRADESTART_CONTINUE();
}

instance DIA_SALZER_WHEELTRADENOW(C_INFO) {
    NPC = 0xd9e9;
    NR = 900;
    CONDITION = DIA_SALZER_WHEELTRADENOW_CONDITION;
    INFORMATION = DIA_SALZER_WHEELTRADENOW_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I got you these wheels...";
}

func int DIA_SALZER_WHEELTRADENOW_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1178a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_WHEELTRADENOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Salzer_WheelTradeNow_15_01");
    if ((NPC_HASITEMS(OTHER, 0x9121)) >= (1)) {
        RND_SALZER = HLP_RANDOM(2);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        if ((RND_SALZER) == (0)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeNow_03_02");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeNow_03_03");
        } else {
            CREATEINVITEMS(SELF, 0x859b, (WHEELPRICE) * (NPC_HASITEMS(OTHER, 0x9121)));
        } else {
            /* set_instance(0) */;
        };
    };
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Salzer_WheelTradeNow_03_04");
    AI_RESETFACEANI(SELF);
}

var int DIA_SALZER_WHEELTRADENOW_INFO.RND_SALZER = 0;
instance DIA_SALZER_PICKPOCKET(C_INFO) {
    NPC = 0xd9e9;
    NR = 900;
    CONDITION = DIA_SALZER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SALZER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_SALZER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALZER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11793);
    INFO_ADDCHOICE(0x11793, DIALOG_BACK, 0x11797);
    INFO_ADDCHOICE(0x11793, DIALOG_PICKPOCKET, 0x11796);
}

func void DIA_SALZER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11793);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11793);
}

func void DIA_SALZER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11793);
}

