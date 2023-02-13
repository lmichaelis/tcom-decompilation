var int HAROLD_TOLDOURNAME;
instance DIA_HAROLD_EXIT(C_INFO) {
    NPC = 55915;
    NR = 999;
    CONDITION = DIA_HAROLD_EXIT_CONDITION;
    INFORMATION = DIA_HAROLD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HAROLD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HAROLD_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_EXIT_Marvin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_EXIT_Marvin_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HAROLD_HELLO(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_HAROLD_HELLO_CONDITION;
    INFORMATION = DIA_HAROLD_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAROLD_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_HAROLD_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_03_02");
    INFO_CLEARCHOICES(77889);
    INFO_ADDCHOICE(77889, "I'd rather keep it to myself.", 77894);
    INFO_ADDCHOICE(77889, "My name is Marvin.", 77893);
}

func void DIA_HAROLD_HELLO_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_Pissoff_03_03");
    INFO_CLEARCHOICES(77889);
}

func void DIA_HAROLD_HELLO_MARVIN() {
    HAROLD_TOLDOURNAME = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_HELLO_Marvin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_Marvin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_Marvin_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_HELLO_Marvin_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_Marvin_03_05");
    INFO_CLEARCHOICES(77889);
    INFO_ADDCHOICE(77889, "What do you mean?", 77895);
}

func void DIA_HAROLD_HELLO_PISSOFF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_HELLO_Pissoff_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_Pissoff_03_02");
    DIA_HAROLD_HELLO_END();
}

func void DIA_HAROLD_HELLO_MARVIN_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_HELLO_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_HELLO_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_HELLO_What_03_05");
    DIA_HAROLD_HELLO_END();
}

instance DIA_HAROLD_WHAT(C_INFO) {
    NPC = 55915;
    NR = 5;
    CONDITION = DIA_HAROLD_WHAT_CONDITION;
    INFORMATION = DIA_HAROLD_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_HAROLD_WHAT_CONDITION() {
    return TRUE;
}

func void DIA_HAROLD_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_What_15_01");
    if ((HAROLD_TOLDOURNAME) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_What_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Harold_What_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_What_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_What_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_What_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_What_03_07");
}

instance DIA_HAROLD_WANNATRADE(C_INFO) {
    NPC = 55915;
    NR = 6;
    CONDITION = DIA_HAROLD_WANNATRADE_CONDITION;
    INFORMATION = DIA_HAROLD_WANNATRADE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you sell any of your goods?";
}

func int DIA_HAROLD_WANNATRADE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77896)) && ((HAROLD_TOLDOURNAME) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_WANNATRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_WannaTrade_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_WannaTrade_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_WannaTrade_03_03");
    LOG_CREATETOPIC(TOPIC_OTHERTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_OTHERTRADER, LOG_TRADER_HAROLD);
}

instance DIA_HAROLD_SHIP(C_INFO) {
    NPC = 55915;
    NR = 5;
    CONDITION = DIA_HAROLD_SHIP_CONDITION;
    INFORMATION = DIA_HAROLD_SHIP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you ever owned a ship?";
}

func int DIA_HAROLD_SHIP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77896)) && ((HAROLD_TOLDOURNAME) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_SHIP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_Ship_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_03_04");
    INFO_CLEARCHOICES(77902);
    INFO_ADDCHOICE(77902, "What did you do for a living?", 77905);
}

func void DIA_HAROLD_SHIP_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_Ship_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ship_What_03_04");
    INFO_CLEARCHOICES(77902);
}

instance DIA_HAROLD_YANNICK(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_PART4_FISHERMAN_Q208_YANNICK_CONDITION;
    INFORMATION = DIA_HAROLD_YANNICK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you know where I can find Yannick?";
}

func void DIA_HAROLD_YANNICK_INFO() {
    DIA_PART4_FISHERMAN_Q208_YANNICK_INFO();
}

instance DIA_HAROLD_AMBIENT(C_INFO) {
    NPC = 55915;
    NR = 950;
    CONDITION = DIA_HAROLD_AMBIENT_CONDITION;
    INFORMATION = DIA_HAROLD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_HAROLD_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_HAROLD_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_Ambient_15_01");
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ambient_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ambient_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Harold_Ambient_03_04");
    };
}

instance DIA_HAROLD_TRADE(C_INFO) {
    NPC = 55915;
    NR = 800;
    CONDITION = DIA_HAROLD_TRADE_CONDITION;
    INFORMATION = DIA_HAROLD_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me what you have for sale.";
}

func int DIA_HAROLD_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77899)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_TRADE_15_01");
    B_GIVETRADEINV(SELF);
}

instance DIA_HAROLD_SQ123_CHEAT(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_HAROLD_SQ123_CHEAT_CONDITION;
    INFORMATION = DIA_HAROLD_SQ123_CHEAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Sven is going to cheat during your bet.";
}

func int DIA_HAROLD_SQ123_CHEAT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && ((SQ123_DESTROYEDBOAT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_SQ123_CHEAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Cheat_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Cheat_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_03_07");
    INFO_CLEARCHOICES(77914);
    INFO_ADDCHOICE(77914, "Mess up your own boats.", 77919);
    INFO_ADDCHOICE(77914, "All right, I'll help you.", 77918);
    INFO_ADDCHOICE(77914, "Aren't you afraid something will happen to him?", 77917);
}

func void DIA_HAROLD_SQ123_CHEAT_AFFRAID() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Cheat_Affraid_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_Affraid_03_02");
    AI_RESETFACEANI(OTHER);
}

func void DIA_HAROLD_SQ123_CHEAT_OKAY() {
    SQ123_CANDESTROYSVENBOAT = TRUE;
    MOB_CHANGEFOCUSNAME("SQ123_BOATTODESTROY_SVEN", "MOBNAME_SQ123_BOAT_SVEN");
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Cheat_Okay_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_Okay_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_Okay_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_Okay_03_04");
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_HAROLD_PLAN);
    INFO_CLEARCHOICES(77914);
    CREATEINVITEMS(SELF, 38259, 3);
    B_GIVEINVITEMS(SELF, OTHER, 38259, 3);
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void DIA_HAROLD_SQ123_CHEAT_NO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Cheat_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Cheat_No_03_02");
    INFO_CLEARCHOICES(77914);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_FAILED);
    LOG_SETSTATUS(_@(MIS_SQ123), TOPIC_SQ123, LOG_FAILED);
    NPC_EXCHANGEROUTINE(SELF, "SQ123_SMALLTALK");
    B_STARTOTHERROUTINE(NONE_6350_SVEN, "SQ123_SMALLTALK");
    NPC_REFRESH(NONE_6350_SVEN);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HAROLD_BUSY(C_INFO) {
    NPC = 55915;
    NR = 2;
    CONDITION = DIA_HAROLD_BUSY_CONDITION;
    INFORMATION = DIA_HAROLD_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HAROLD_BUSY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ123)) == (LOG_FAILED)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_HAROLD_SQ123_AFTERCONTEST(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_HAROLD_SQ123_AFTERCONTEST_CONDITION;
    INFORMATION = DIA_HAROLD_SQ123_AFTERCONTEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAROLD_SQ123_AFTERCONTEST_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && ((SQ123_FISHINGCONTEST) == (4))) && ((SQ123_DESTROYEDBOAT) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_SQ123_AFTERCONTEST_INFO() {
    SELF.AIVAR[15] = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_AfterContest_03_01");
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_HAROLD_GOWITHME);
    NPC_EXCHANGEROUTINE(SELF, "SQ123_GUIDE");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 62114);
}

instance DIA_HAROLD_SQ123_FINISH(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_HAROLD_SQ123_FINISH_CONDITION;
    INFORMATION = DIA_HAROLD_SQ123_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAROLD_SQ123_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 77923))) && ((NPC_GETDISTTOWP(SELF, "PART4_FISHERMAN_87")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_SQ123_FINISH_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Finish_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Finish_03_02");
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_RESETFACEANI(SELF);
    CREATEINVITEMS(SELF, 37011, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37011, 1);
    LOG_SETSTATUS(_@(MIS_SQ123), TOPIC_SQ123, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_FINISH_V1);
    B_GIVEPLAYERXP(XP_SQ123_FINISH);
}

instance DIA_HAROLD_SQ123_FISH(C_INFO) {
    NPC = 55915;
    NR = 1;
    CONDITION = DIA_HAROLD_SQ123_FISH_CONDITION;
    INFORMATION = DIA_HAROLD_SQ123_FISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "There was a lump of ore in the fish?";
}

func int DIA_HAROLD_SQ123_FISH_CONDITION() {
    if ((SQ123_OPENFISH) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_SQ123_FISH_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harold_SQ123_Fish_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Fish_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harold_SQ123_Fish_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HAROLD_PICKPOCKET(C_INFO) {
    NPC = 55915;
    NR = 900;
    CONDITION = DIA_HAROLD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HAROLD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_HAROLD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAROLD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(77932);
    INFO_ADDCHOICE(77932, DIALOG_BACK, 77936);
    INFO_ADDCHOICE(77932, DIALOG_PICKPOCKET, 77935);
}

func void DIA_HAROLD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 33972, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33972, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(77932);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(77932);
}

func void DIA_HAROLD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(77932);
}
