instance DIA_VENZEL_EXIT(C_INFO) {
    NPC = 0xcd2f;
    NR = 999;
    CONDITION = DIA_VENZEL_EXIT_CONDITION;
    INFORMATION = DIA_VENZEL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VENZEL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VENZEL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VENZEL_HELLO(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_HELLO_CONDITION;
    INFORMATION = DIA_VENZEL_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VENZEL_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (!(NPC_KNOWSINFO(OTHER, 0x12c8e)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_HELLO_03_01");
}

instance DIA_VENZEL_TELL(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_TELL_CONDITION;
    INFORMATION = DIA_VENZEL_TELL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about yourself.";
}

func int DIA_VENZEL_TELL_CONDITION() {
    return TRUE;
}

func void DIA_VENZEL_TELL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Tell_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Tell_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Tell_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Tell_03_09");
}

instance DIA_VENZEL_CANTRADE(C_INFO) {
    NPC = 0xcd2f;
    NR = 10;
    CONDITION = DIA_VENZEL_CANTRADE_CONDITION;
    INFORMATION = DIA_VENZEL_CANTRADE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are your books for sale?";
}

func int DIA_VENZEL_CANTRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12c6e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_CANTRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_CanTrade_15_01");
    B_SAY(SELF, OTHER, "$SURE_V3");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_CanTrade_03_03");
    TRADER_LOGENTRY_WENZEL();
}

instance DIA_VENZEL_TRADE(C_INFO) {
    NPC = 0xcd2f;
    NR = 950;
    CONDITION = DIA_VENZEL_TRADE_CONDITION;
    INFORMATION = DIA_VENZEL_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "I want to see your books.";
}

func int DIA_VENZEL_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12c71)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_TRADE_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_TRADE_03_02");
    B_GIVETRADEINV(SELF);
}

instance DIA_VENZEL_NAME(C_INFO) {
    NPC = 0xcd2f;
    NR = 10;
    CONDITION = DIA_VENZEL_NAME_CONDITION;
    INFORMATION = DIA_VENZEL_NAME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where did the name 'Three Sailors' come from?";
}

func int DIA_VENZEL_NAME_CONDITION() {
    return TRUE;
}

func void DIA_VENZEL_NAME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Name_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Name_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Name_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Name_03_11");
}

instance DIA_VENZEL_SQ225_DOC(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ225_DOC_CONDITION;
    INFORMATION = DIA_VENZEL_SQ225_DOC_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you draw up a document for me?";
}

func int DIA_VENZEL_SQ225_DOC_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_VALERIOTESTAMENT) == (1))) && ((NPC_HASITEMS(OTHER, 0x90e2)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_SQ225_DOC_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_15_03");
    B_GIVEINVITEMS(OTHER, SELF, 0x90e2, 1);
    B_STANDUP();
    B_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_03_04");
    B_GIVEINVITEMS(SELF, OTHER, 0x90e2, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_03_05");
    INFO_CLEARCHOICES(0x12c7a);
    INFO_ADDCHOICE(0x12c7a, "You don't?", 0x12c7d);
}

func void DIA_VENZEL_SQ225_DOC_AREYOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_AreYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_AreYou_03_02");
    AI_RESETFACEANI(SELF);
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_AreYou_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_AreYou_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_AreYou_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_AreYou_03_06");
    INFO_CLEARCHOICES(0x12c7a);
    INFO_ADDCHOICE(0x12c7a, "I guess I'll have to find someone else though.", 0x12c82);
    INFO_ADDCHOICE(0x12c7a, "Fine. I'll get rid of all the evidence.", 0x12c7f);
    INFO_ADDCHOICE(0x12c7a, "You want me to steal from the guards and obstruct their investigation?", 0x12c81);
}

func void DIA_VENZEL_SQ225_DOC_AGREED() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_Yes_03_02");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_VENZEL_JOB);
    INFO_CLEARCHOICES(0x12c7a);
}

func void DIA_VENZEL_SQ225_DOC_AREYOU_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_Yes_15_01");
    DIA_VENZEL_SQ225_DOC_AGREED();
}

func void DIA_VENZEL_SQ225_DOC_LISTEN() {
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_Steal_03_04");
}

func void DIA_VENZEL_SQ225_DOC_AREYOU_STEAL() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_Steal_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_Steal_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_Steal_15_03");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    DIA_VENZEL_SQ225_DOC_LISTEN();
}

func void DIA_VENZEL_SQ225_DOC_AREYOU_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_No_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_Doc_No_03_03");
    INFO_CLEARCHOICES(0x12c7a);
    INFO_ADDCHOICE(0x12c7a, "You'll have to find someone else.", 0x12c84);
    INFO_ADDCHOICE(0x12c7a, "Agreed.", 0x12c83);
}

func void DIA_VENZEL_SQ225_DOC_AREYOU_NO_YESV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_YesV2_15_01");
    DIA_VENZEL_SQ225_DOC_AGREED();
}

func void DIA_VENZEL_SQ225_DOC_AREYOU_NO_NOV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_Doc_NoV2_15_01");
    DIA_VENZEL_SQ225_DOC_LISTEN();
    DIA_VENZEL_SQ225_DOC_AREYOU_NO_YESV2();
}

instance DIA_VENZEL_SQ225_DUSTERGONE(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ225_DUSTERGONE_CONDITION;
    INFORMATION = DIA_VENZEL_SQ225_DUSTERGONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Duster will give you a break now.";
}

func int DIA_VENZEL_SQ225_DUSTERGONE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_VALERIOTESTAMENT) == (1))) && (NPC_KNOWSINFO(OTHER, 0x1068a))) {
        if (((NPC_HASITEMS(OTHER, 0x90e2)) >= (1)) && ((NPC_HASITEMS(OTHER, 0x90df)) >= (1))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_SQ225_DUSTERGONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_15_01");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_02");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_15_04");
    AI_PLAYANI(SELF, T_STAND_2_COUNTING);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_06");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_15_07");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_COUNTING_2_STAND);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_08");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_15_09");
    NPC_REMOVEINVITEMS(SELF, 0x90df, 1);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    NPC_REMOVEINVITEMS(SELF, 0x90e2, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_10");
    B_GIVEINVITEMS(OTHER, SELF, 0x90df, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_03_11");
    B_GIVEINVITEMS(OTHER, SELF, 0x90e2, 1);
    INFO_CLEARCHOICES(0x12c85);
    INFO_ADDCHOICE(0x12c85, "Here, and remember: two copies! (25 GP)", 0x12c8a);
    INFO_ADDCHOICE(0x12c85, "I've fulfilled your request, and you still want money?", 0x12c89);
}

func void DIA_VENZEL_SQ225_DUSTERGONE_END() {
    SQ225_VENZEL_PAYGOLD = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_GotTestament_03_02");
    CREATEINVITEMS(SELF, 0x90df, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x90df, 1);
    CREATEINVITEMS(SELF, 0x90e5, 2);
    B_GIVEINVITEMS(SELF, OTHER, 0x90e5, 2);
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_VENZEL_TESTAMENTREADY);
    INFO_CLEARCHOICES(0x12c85);
}

func void DIA_VENZEL_SQ225_DUSTERGONE_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ225_DusterGone_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_What_15_03");
}

func void DIA_VENZEL_SQ225_DUSTERGONE_HERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ225_DusterGone_Here_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ225_VENZEL_PAYFORWORK)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ225_VENZEL_PAYFORWORK);
        DIA_VENZEL_SQ225_DUSTERGONE_END();
    };
    SQ225_VENZEL_PAYGOLD = 1;
    B_SAY(SELF, OTHER, "$NOGOLD");
    INFO_CLEARCHOICES(0x12c85);
}

instance DIA_VENZEL_SQ225_PAY(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ225_PAY_CONDITION;
    INFORMATION = DIA_VENZEL_SQ225_PAY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Here, and remember: two copies! (25 GP)";
}

func int DIA_VENZEL_SQ225_PAY_CONDITION() {
    if (((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_VALERIOTESTAMENT) == (1))) && (NPC_KNOWSINFO(OTHER, 0x1068a))) && ((NPC_HASITEMS(OTHER, 0x90e2)) >= (1))) && ((NPC_HASITEMS(OTHER, 0x90df)) >= (1))) && ((SQ225_VENZEL_PAYGOLD) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_SQ225_PAY_INFO() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ225_VENZEL_PAYFORWORK)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ225_VENZEL_PAYFORWORK);
        DIA_VENZEL_SQ225_DUSTERGONE_END();
    };
    SQ225_VENZEL_PAYGOLD = 1;
    B_SAY(SELF, OTHER, "$NOGOLD");
    INFO_CLEARCHOICES(0x12c85);
}

instance DIA_VENZEL_Q311(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_Q311_CONDITION;
    INFORMATION = DIA_VENZEL_Q311_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you recognize this brochure?";
}

func int DIA_VENZEL_Q311_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x91ae)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void VENZEL_FINISHQ311() {
    LOG_SETSTATUS(_@(MIS_Q311), TOPIC_Q311, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q311_FINISH);
    if (HLP_ISVALIDNPC(VLK_6423_BODYGUARD)) {
        B_REMOVENPC(0xcd2c);
    };
    if (HLP_ISVALIDNPC(VLK_6422_BODYGUARD)) {
        B_REMOVENPC(0xcd29);
    };
}

func void DIA_VENZEL_Q311_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_15_01");
    B_STANDUP();
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_03_05");
    INFO_CLEARCHOICES(0x12c8e);
    if ((Q311_INFOFROMLUDLOF) == (TRUE)) {
        INFO_ADDCHOICE(0x12c8e, "You're the only writer in this city.", 0x12c93);
    };
    INFO_ADDCHOICE(0x12c8e, "If it were different, you wouldn't be so upset.", 0x12c94);
}

func void DIA_VENZEL_Q311_NEXT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Next_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Next_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Next_03_04");
    INFO_CLEARCHOICES(0x12c8e);
    INFO_ADDCHOICE(0x12c8e, "I'll agree with you here.", 0x12c96);
    INFO_ADDCHOICE(0x12c8e, "Who ordered them?", 0x12c97);
}

func void DIA_VENZEL_Q311_LUDLOF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Ludlof_15_01");
    DIA_VENZEL_Q311_NEXT();
}

func void DIA_VENZEL_Q311_SMART() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Smart_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Smart_03_02");
    DIA_VENZEL_Q311_NEXT();
}

func void DIA_VENZEL_Q311_SILVERCOINS() {
    INFO_CLEARCHOICES(0x12c8e);
    INFO_ADDCHOICE(0x12c8e, "Wait a minute... what 'silver coins'?", 0x12ca0);
}

func void DIA_VENZEL_Q311_SMART_NEXT_AGREE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Agree_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Agree_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Agree_03_03");
    DIA_VENZEL_Q311_SILVERCOINS();
}

func void DIA_VENZEL_Q311_SMART_NEXT_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Who_03_03");
    DIA_VENZEL_Q311_SILVERCOINS();
}

func void DIA_VENZEL_DONTTELLANYONE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_03_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_03_03");
    INFO_CLEARCHOICES(0x12c8e);
    INFO_ADDCHOICE(0x12c8e, "You helped me, so I'll help you.", 0x12c99);
    INFO_ADDCHOICE(0x12c8e, "You should go to the dungeon for that.", 0x12c9a);
    INFO_ADDCHOICE(0x12c8e, "It depends on what you can offer me.", 0x12c9b);
}

func void DIA_VENZEL_Q311_HELPED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_DontTell_Helped_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_Helped_03_02");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_HELP_V1);
    INFO_CLEARCHOICES(0x12c8e);
    B_GIVEPLAYERXP(XP_Q311_GOODGUY);
    VENZEL_FINISHQ311();
}

func void DIA_VENZEL_Q311_JAIL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_DontTell_Jail_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_Jail_03_02");
    INFO_CLEARCHOICES(0x12c8e);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_HELP_V2);
    VENZEL_FINISHQ311();
}

func void DIA_VENZEL_Q311_OFFER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_DontTell_Offer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_Offer_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_Offer_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_Offer_03_04");
    INFO_CLEARCHOICES(0x12c8e);
    INFO_ADDCHOICE(0x12c8e, "Sounds fair.", 0x12c9c);
    INFO_ADDCHOICE(0x12c8e, "Let me see if you're telling the truth.", 0x12c9e);
}

func void DIA_VENZEL_Q311_OFFER_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_DontTell_Yes_15_01");
    MAXWEAPONSKILL = MAXOF4(HERO.HITCHANCE[1], HERO.HITCHANCE[2], HERO.HITCHANCE[3], HERO.HITCHANCE[4]);
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[1])) {
        CREATEINVITEMS(VLK_6426_VENZEL, 0xa061, 1);
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[2])) {
        CREATEINVITEMS(VLK_6426_VENZEL, 0xa058, 1);
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[3])) {
        CREATEINVITEMS(VLK_6426_VENZEL, 0xa073, 1);
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[4])) {
        CREATEINVITEMS(VLK_6426_VENZEL, 0xa06a, 1);
        B_GIVEINVITEMS(VLK_6426_VENZEL, HERO, 0xa06a, 1);
    };
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_HELP_V3);
    INFO_CLEARCHOICES(0x12c8e);
    VENZEL_FINISHQ311();
}

var int DIA_VENZEL_Q311_OFFER_YES.MAXWEAPONSKILL = 0;
func void DIA_VENZEL_Q311_OFFER_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_DontTell_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_No_03_02");
    CREATEINVITEMS(SELF, 0x85a6, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x85a6, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_DontTell_No_03_03");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_HELP_V4);
    INFO_CLEARCHOICES(0x12c8e);
    VENZEL_FINISHQ311();
}

func void DIA_VENZEL_Q311_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_End_03_01");
    if ((Q311_INFOFROMLUDLOF) == (TRUE)) {
        if ((LOG_GETSTATUS(MIS_Q309)) == (LOG_SUCCESS)) {
            AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_V1);
        } else {
            AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_V2);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((LOG_GETSTATUS(MIS_Q309)) == (LOG_SUCCESS)) {
        AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_V3);
    };
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_VENZEL_V4);
    DIA_VENZEL_DONTTELLANYONE();
}

func void DIA_VENZEL_Q311_SMART_NEXT_AGREE_SILVER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Silver_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Silver_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Q311_Silver_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Q311_Silver_03_06");
    CREATEINVITEMS(SELF, 0x91b1, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91b1, 1);
    DIA_VENZEL_Q311_END();
}

instance DIA_VENZEL_VOLKER(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_VOLKER_CONDITION;
    INFORMATION = DIA_VENZEL_VOLKER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You mentioned some thieves...";
}

func int DIA_VENZEL_VOLKER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_SUCCESS)) && ((KAPITEL) <= (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_VOLKER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Volker_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_03_05");
    INFO_CLEARCHOICES(0x12ca1);
    INFO_ADDCHOICE(0x12ca1, "I don't see the logic in what you're talking about.", 0x12ca4);
    INFO_ADDCHOICE(0x12ca1, "What book was that about?", 0x12ca5);
}

func void DIA_VENZEL_VOLKER_LOGIC() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Volker_Logic_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_Logic_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_Logic_03_03");
}

func void DIA_VENZEL_VOLKER_BOOK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Volker_Book_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_Book_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_Book_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Volker_Book_03_04");
}

instance DIA_VENZEL_SQ411_DOCS(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ411_DOCS_CONDITION;
    INFORMATION = DIA_VENZEL_SQ411_DOCS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The judge told me to order five copies of this document.";
}

func int DIA_VENZEL_SQ411_DOCS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ411)) == (LOG_RUNNING)) && ((SQ411_FAILED) == (FALSE))) && ((NPC_HASITEMS(OTHER, 0x91f8)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_HERESDOCS() {
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ411_Docs_03_03");
}

func void DIA_VENZEL_SQ411_DOCS_INFO() {
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ411_Docs_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x91f8, 1);
    AI_WAITTILLEND(SELF, OTHER);
    B_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ411_Docs_03_02");
    B_USEFAKESCROLL();
    DIA_VENZEL_HERESDOCS();
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ411_Docs_03_04");
    CREATEINVITEMS(SELF, 0x91f9, 5);
    B_GIVEINVITEMS(SELF, OTHER, 0x91f9, 5);
    CREATEINVITEMS(SELF, 0x91fb, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91fb, 1);
    INFO_CLEARCHOICES(0x12ca6);
    INFO_ADDCHOICE(0x12ca6, "Thanks for your help.", 0x12caa);
}

func void DIA_VENZEL_SQ411_DOCS_THANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ411_Docs_Thanks_15_01");
    INFO_CLEARCHOICES(0x12ca6);
    AI_LOGENTRY(TOPIC_SQ411, LOG_SQ411_GOTDOCS);
}

func void DIA_VENZEL_SQ411_DOCS_LIE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ411_Docs_Lie_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ411_Docs_Lie_03_02");
    INFO_CLEARCHOICES(0x12ca6);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ411_VENZEL_PRICE)) {
        INFO_ADDCHOICE(0x12ca6, "I'd rather he didn't know about the mistake. (Pay 150 GP)", 0x12cad);
    };
    INFO_ADDCHOICE(0x12ca6, "Could you not tell him about this? He'll deduct it from my pay.", 0x12cae);
}

func void DIA_VENZEL_SQ411_DOCS_FAKEONE() {
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ411_Docs_NoGold_03_02");
    B_USEFAKESCROLL();
    CREATEINVITEMS(SELF, 0x91fa, 5);
    B_GIVEINVITEMS(SELF, OTHER, 0x91fa, 5);
    DIA_VENZEL_HERESDOCS();
    DIA_VENZEL_SQ411_DOCS_THANKS();
}

func void DIA_VENZEL_SQ411_DOCS_LIE_DONTTELL() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ411_Docs_DontTell_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ411_VENZEL_PRICE);
    DIA_VENZEL_SQ411_DOCS_FAKEONE();
}

func void DIA_VENZEL_SQ411_DOCS_LIE_NOGOLD() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ411_Docs_NoGold_15_01");
    DIA_VENZEL_SQ411_DOCS_FAKEONE();
}

instance DIA_VENZEL_SQ505_DOC(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ505_DOC_CONDITION;
    INFORMATION = DIA_VENZEL_SQ505_DOC_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I would like to rewrite a certain document.";
}

func int DIA_VENZEL_SQ505_DOC_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9256)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_SQ505_DOC_INFO() {
    SQ505_CANUSEWRITETABLE = TRUE;
    MOB_CHANGEFOCUSNAME("SQ505_WRITETABLE", "MOBNAME_SQ505_WRITETABLE");
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ505_Doc_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9256, 1);
    B_STANDUP();
    B_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ505_Doc_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_SQ505_Doc_15_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ505_Doc_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ505_Doc_03_05");
    CREATEINVITEMS(SELF, 0x8ce2, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8ce2, 1);
    CREATEINVITEMS(SELF, 0x8d0e, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8d0e, 1);
    AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_WENZEL_LETSWORK);
    NPC_EXCHANGEROUTINE(SELF, "SQ505_WRITE");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VENZEL_SQ505_NICEDOC(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_SQ505_NICEDOC_CONDITION;
    INFORMATION = DIA_VENZEL_SQ505_NICEDOC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VENZEL_SQ505_NICEDOC_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9259)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_SQ505_NICEDOC_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ505_NiceDoc_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_SQ505_NiceDoc_03_02");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_WENZEL_NICEDOC);
}

var int VENZEL_CANTEACH = 0;
instance DIA_VENZEL_CANYOUTEACH(C_INFO) {
    NPC = 0xcd2f;
    NR = 3;
    CONDITION = DIA_VENZEL_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_VENZEL_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something?";
}

func int DIA_VENZEL_CANYOUTEACH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12c6e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_CanYouTeach_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_BookForYou_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_BookForYou_03_04");
    LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_CITYTEACHER, LOG_CITYTEACHER_VENZEL);
    VENZEL_CANTEACH = TRUE;
}

var int VENZEL_NOMORE = 0;
var string VENZEL_PRINTS = "";
var int VENZEL_CURRENT1HLEVEL = 0;
var int VENZEL_CURRENT2HLEVEL = 0;
instance DIA_VENZEL_TEACH(C_INFO) {
    NPC = 0xcd2f;
    NR = 1;
    CONDITION = DIA_VENZEL_TEACH_CONDITION;
    INFORMATION = DIA_VENZEL_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Teach me.";
}

func int DIA_VENZEL_TEACH_CONDITION() {
    if (((VENZEL_CANTEACH) == (TRUE)) && ((VENZEL_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_TEACH_CHOICES() {
    VENZEL_GOLDCOST = 15;
    VENZEL_CURRENT1HLEVEL = OTHER.AIVAR[84];
    VENZEL_CURRENT2HLEVEL = OTHER.AIVAR[85];
    INFO_CLEARCHOICES(0x12cbd);
    INFO_ADDCHOICE(0x12cbd, DIALOG_BACK, 0x12cc2);
    INFO_ADDCHOICE(0x12cbd, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), VENZEL_GOLDCOST), 0x12cc3);
    INFO_ADDCHOICE(0x12cbd, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 5), (VENZEL_GOLDCOST) * (5)), 0x12cc4);
    INFO_ADDCHOICE(0x12cbd, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), VENZEL_GOLDCOST), 0x12cc5);
    INFO_ADDCHOICE(0x12cbd, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 5), (VENZEL_GOLDCOST) * (5)), 0x12cc6);
    if (((OTHER.AIVAR[84]) >= (60)) && ((OTHER.AIVAR[85]) >= (60))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_NoMore_03_01");
        VENZEL_NOMORE = TRUE;
    };
}

var int DIA_VENZEL_TEACH_CHOICES.VENZEL_GOLDCOST = 0;
func void DIA_VENZEL_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Venzel_Teach_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Teach_03_01");
    DIA_VENZEL_TEACH_CHOICES();
}

func void DIA_VENZEL_TEACH_BACK() {
    INFO_CLEARCHOICES(0x12cbd);
}

func void DIA_VENZEL_TEACH_1H1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VENZEL_PAYMENT1)) {
        if ((VENZEL_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VENZEL_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 0x859b, VENZEL_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 60);
        DIA_VENZEL_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VENZEL_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Teach_1H1_03_01");
        VENZEL_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VENZEL_PAYMENT1));
        PRINTSCREEN(VENZEL_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VENZEL_TEACH_CHOICES();
    };
}

func void DIA_VENZEL_TEACH_1H5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VENZEL_PAYMENT5)) {
        if ((VENZEL_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VENZEL_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
            NPC_REMOVEINVITEMS(SELF, 0x859b, VENZEL_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 60);
        DIA_VENZEL_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VENZEL_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Teach_1H5_03_01");
        VENZEL_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VENZEL_PAYMENT5));
        PRINTSCREEN(VENZEL_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VENZEL_TEACH_CHOICES();
    };
}

func void DIA_VENZEL_TEACH_2H1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VENZEL_PAYMENT1)) {
        if ((VENZEL_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VENZEL_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 0x859b, VENZEL_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 60);
        DIA_VENZEL_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VENZEL_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Teach_2H1_03_01");
        VENZEL_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VENZEL_PAYMENT1));
        PRINTSCREEN(VENZEL_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VENZEL_TEACH_CHOICES();
    };
}

func void DIA_VENZEL_TEACH_2H5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VENZEL_PAYMENT5)) {
        if ((VENZEL_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VENZEL_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
            NPC_REMOVEINVITEMS(SELF, 0x859b, VENZEL_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 60);
        DIA_VENZEL_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VENZEL_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Teach_2H5_03_01");
        VENZEL_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VENZEL_PAYMENT5));
        PRINTSCREEN(VENZEL_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VENZEL_TEACH_CHOICES();
    };
}

instance DIA_VENZEL_AMBIENT(C_INFO) {
    NPC = 0xcd2f;
    NR = 950;
    CONDITION = DIA_VENZEL_AMBIENT_CONDITION;
    INFORMATION = DIA_VENZEL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_VENZEL_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12c6e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((!(NPC_KNOWSINFO(OTHER, 0x12c85))) && (!(NPC_KNOWSINFO(OTHER, 0x12c8e)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Ambient_03_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x12c85)) && (!(NPC_KNOWSINFO(OTHER, 0x12c8e)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Ambient_03_02");
    };
    if (NPC_KNOWSINFO(OTHER, 0x12c8e)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Venzel_Ambient_03_03");
    };
}

instance DIA_VENZEL_PICKPOCKET(C_INFO) {
    NPC = 0xcd2f;
    NR = 900;
    CONDITION = DIA_VENZEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VENZEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_VENZEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VENZEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12cca);
    INFO_ADDCHOICE(0x12cca, DIALOG_BACK, 0x12cce);
    INFO_ADDCHOICE(0x12cca, DIALOG_PICKPOCKET, 0x12ccd);
}

func void DIA_VENZEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8c94, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8c94, 2);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12cca);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12cca);
}

func void DIA_VENZEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12cca);
}

