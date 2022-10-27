instance DIA_KUNO_EXIT(C_INFO) {
    NPC = 0xcd1c;
    NR = 999;
    CONDITION = DIA_KUNO_EXIT_CONDITION;
    INFORMATION = DIA_KUNO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KUNO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KUNO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KUNO_GAMBIT(C_INFO) {
    NPC = 0xcd1c;
    NR = 1;
    CONDITION = DIA_KUNO_GAMBIT_CONDITION;
    INFORMATION = DIA_KUNO_GAMBIT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KUNO_GAMBIT_CONDITION() {
    return TRUE;
}

func void DIA_KUNO_GAMBIT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_03_01");
    INFO_CLEARCHOICES(0x12585);
    INFO_ADDCHOICE(0x12585, "What is it?", 0x12588);
}

func void DIA_KUNO_GAMBIT_WHATSGOINGON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_03_04");
    INFO_CLEARCHOICES(0x12585);
    INFO_ADDCHOICE(0x12585, "What the hell are you talking about?", 0x1258a);
    INFO_ADDCHOICE(0x12585, "What are you talking about?", 0x1258b);
}

func void DIA_KUNO_GAMBIT_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_03");
    INFO_CLEARCHOICES(0x12585);
    INFO_ADDCHOICE(0x12585, "I'll be off then, I won't break you down any further.", 0x1258c);
}

func void DIA_KUNO_GAMBIT_WHATANGRY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_WhatAngry_15_01");
    DIA_KUNO_GAMBIT_NEXT();
}

func void DIA_KUNO_GAMBIT_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_What_15_01");
    DIA_KUNO_GAMBIT_NEXT();
}

func void DIA_KUNO_GAMBIT_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_What_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_07");
    INFO_CLEARCHOICES(0x12585);
}

instance DIA_KUNO_CQ001_START(C_INFO) {
    NPC = 0xcd1c;
    NR = 1;
    CONDITION = DIA_KUNO_CQ001_START_CONDITION;
    INFORMATION = DIA_KUNO_CQ001_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "So what do you want me to do for you?";
}

func int DIA_KUNO_CQ001_START_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12585)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_CQ001_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_WhatToDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_WhatToDo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_WhatToDo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_WhatToDo_03_04");
    INFO_CLEARCHOICES(0x1258d);
    INFO_ADDCHOICE(0x1258d, DIALOG_BESILENT, 0x12590);
    INFO_ADDCHOICE(0x1258d, "All that trouble over some stupid game?", 0x12591);
}

func void DIA_KUNO_CQ001_START_SILENCE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_WhatToDo_03_07");
    INFO_CLEARCHOICES(0x1258d);
    INFO_ADDCHOICE(0x1258d, "What did you talk about?", 0x12592);
    INFO_ADDCHOICE(0x1258d, "We need to discuss payment.", 0x12593);
}

func void DIA_KUNO_CQ001_START_STUPID() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_WhatToDo_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_WhatToDo_03_06");
    DIA_KUNO_CQ001_START_SILENCE();
}

func void DIA_KUNO_CQ001_START_TALKABOUT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Topic_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Topic_03_02");
}

func void DIA_KUNO_CQ001_START_REWARD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Reward_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Reward_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Reward_03_03");
    if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Reward_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Reward_03_05");
        CQ001_KUNOREWARD = 1;
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Reward_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Reward_03_07");
    CQ001_KUNOREWARD = 2;
    INFO_ADDCHOICE(0x1258d, "Where should I look for this manual?", 0x12594);
}

func void DIA_KUNO_CQ001_START_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Where_03_02");
    B_STANDUP();
    INFO_CLEARCHOICES(0x12585);
    AI_STOPPROCESSINFOS(SELF);
    LOG_CREATETOPIC(TOPIC_CQ001, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_CQ001), TOPIC_CQ001, LOG_RUNNING);
    if ((CQ001_KUNOREWARD) == (1)) {
        AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_START);
    };
    if ((CQ001_KUNOREWARD) == (2)) {
        AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_START2);
    };
    NPC_EXCHANGEROUTINE(SELF, "EAT");
}

instance DIA_KUNO_POLITICIAN(C_INFO) {
    NPC = 0xcd1c;
    NR = 80;
    CONDITION = DIA_KUNO_POLITICIAN_CONDITION;
    INFORMATION = DIA_KUNO_POLITICIAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "A politician? Acting in the service of the King?";
}

func int DIA_KUNO_POLITICIAN_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12585)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_POLITICIAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_What_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_11");
}

instance DIA_KUNO_WHATSTUFF(C_INFO) {
    NPC = 0xcd1c;
    NR = 80;
    CONDITION = DIA_KUNO_WHATSTUFF_CONDITION;
    INFORMATION = DIA_KUNO_WHATSTUFF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Sounds intriguing. What is it?";
}

func int DIA_KUNO_WHATSTUFF_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12595)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_WHATSTUFF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_What_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_What_03_14");
}

instance DIA_KUNO_TELLMEABOUT(C_INFO) {
    NPC = 0xcd1c;
    NR = 80;
    CONDITION = DIA_KUNO_TELLMEABOUT_CONDITION;
    INFORMATION = DIA_KUNO_TELLMEABOUT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Tell me...";
}

var int KUNO_TELLMEABOUT_ULRYK = 0;
var int KUNO_TELLMEABOUT_RHOBAR = 0;
func int DIA_KUNO_TELLMEABOUT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12598)) {
        if (((KUNO_TELLMEABOUT_ULRYK) == (FALSE)) || ((KUNO_TELLMEABOUT_RHOBAR) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_TELLMEABOUT_INFO() {
    INFO_CLEARCHOICES(0x1259b);
    INFO_ADDCHOICE(0x1259b, DIALOG_BACK, 0x125a0);
    if ((KUNO_TELLMEABOUT_ULRYK) == (FALSE)) {
        INFO_ADDCHOICE(0x1259b, "What do you think of Ulryk?", 0x125a1);
    };
    if ((KUNO_TELLMEABOUT_RHOBAR) == (FALSE)) {
        INFO_ADDCHOICE(0x1259b, "What do you think of Rhobar II?", 0x125a5);
    };
}

func void DIA_KUNO_TELLMEABOUT_BACK() {
    INFO_CLEARCHOICES(0x1259b);
}

func void DIA_KUNO_TELLMEABOUT_ULRYK() {
    KUNO_TELLMEABOUT_ULRYK = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Ulryk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_03");
    INFO_CLEARCHOICES(0x1259b);
    INFO_ADDCHOICE(0x1259b, DIALOG_BESILENT, 0x125a3);
    INFO_ADDCHOICE(0x1259b, "So far with little success.", 0x125a4);
}

func void DIA_KUNO_TELLMEABOUT_ULRYK_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_10");
    DIA_KUNO_TELLMEABOUT_INFO();
}

func void DIA_KUNO_TELLMEABOUT_ULRYK_SILENCE() {
    DIA_KUNO_TELLMEABOUT_ULRYK_NEXT();
}

func void DIA_KUNO_TELLMEABOUT_ULRYK_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Ulryk_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Ulryk_03_06");
    DIA_KUNO_TELLMEABOUT_ULRYK_NEXT();
}

func void DIA_KUNO_TELLMEABOUT_RHOBAR() {
    KUNO_TELLMEABOUT_RHOBAR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Rhobar_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_04");
    INFO_CLEARCHOICES(0x1259b);
    INFO_ADDCHOICE(0x1259b, "Only convicts go to the colony. They'll be of some use.", 0x125a6);
    INFO_ADDCHOICE(0x1259b, "Aren't you afraid to talk about it so openly?", 0x125a7);
}

func void DIA_KUNO_TELLMEABOUT_RHOBAR_HEARD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Rhobar_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_07");
}

func void DIA_KUNO_TELLMEABOUT_RHOBAR_AFFRAID() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Gambit_Rhobar_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Gambit_Rhobar_03_09");
    DIA_KUNO_TELLMEABOUT_INFO();
}

instance DIA_KUNO_BOOK(C_INFO) {
    NPC = 0xcd1c;
    NR = 2;
    CONDITION = DIA_KUNO_BOOK_CONDITION;
    INFORMATION = DIA_KUNO_BOOK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "About the book you asked for...";
}

func int DIA_KUNO_BOOK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ001)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x125c2))) {
        if ((CQ001_CHESSBOOK) < (4)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_BOOK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_02");
    if ((NPC_HASITEMS(OTHER, 0x9122)) >= (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_04");
        B_GIVEINVITEMS(OTHER, SELF, 0x9122, 1);
        B_USEFAKESCROLL();
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_07");
        AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_09");
        AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_10");
        AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_KUNOISMAD);
        AI_STOPPROCESSINFOS(SELF);
        CQ001_CHESSBOOK = 4;
        AI_FUNCTION(SELF, 0xf4c8);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_Book_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Book_03_12");
}

instance DIA_KUNO_SQ207_LEXX(C_INFO) {
    NPC = 0xcd1c;
    NR = 1;
    CONDITION = DIA_KUNO_SQ207_LEXX_CONDITION;
    INFORMATION = DIA_KUNO_SQ207_LEXX_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Luna sends her regards.";
}

func int DIA_KUNO_SQ207_LEXX_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) && ((SQ207_FAILED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_SQ207_LEXX_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_03_05");
    INFO_CLEARCHOICES(0x125ab);
    INFO_ADDCHOICE(0x125ab, "Luna has an appointment tomorrow to sell the chessboard.", 0x125af);
    INFO_ADDCHOICE(0x125ab, "No way.", 0x125ae);
}

func void DIA_KUNO_SQ207_LEXX_NOWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_NoWay_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_NoWay_03_02");
}

func void DIA_KUNO_SQ207_LEXX_SELL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_Sell_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_Sell_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_Sell_03_03");
    INFO_CLEARCHOICES(0x125ab);
    if ((LOG_GETSTATUS(MIS_CQ001)) == (LOG_SUCCESS)) {
        INFO_ADDCHOICE(0x125ab, "I don't remember our relationship well.", 0x125b1);
    };
    INFO_ADDCHOICE(0x125ab, "I don't have time for this.", 0x125b0);
}

func void DIA_KUNO_SQ207_LEXX_SELL_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_No_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_No_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_No_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_No_03_04");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x125ab);
    INFO_ADDCHOICE(0x125ab, "Okay, I'll pay Luna for you.", 0x125b3);
    INFO_ADDCHOICE(0x125ab, "This is not what my employer asked me to do.", 0x125b2);
}

func void DIA_KUNO_SQ207_LEXX_SELL_BADTIME() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_BadTime_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_BadTime_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_KUNO_SQ207_LEXX_SELL_NO_NOPE() {
    SQ207_KUNORESULT = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_Nope_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_Nope_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_Nope_03_03");
    AI_PLAYANI(SELF, "T_PISSOFF");
    INFO_CLEARCHOICES(0x125ab);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_KUNO_RESULT_V1);
    AI_FUNCTION(SELF, 0xf4c8);
}

func void DIA_KUNO_SQ207_LEXX_SELL_NO_ALRIGHT() {
    SQ207_KUNORESULT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Kuno_SQ207_Lexx_Alright_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_SQ207_Lexx_Alright_03_02");
    INFO_CLEARCHOICES(0x125ab);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_KUNO_RESULT_V2);
    AI_FUNCTION(SELF, 0xf4c8);
}

instance DIA_KUNO_OLDTOWNHELLO(C_INFO) {
    NPC = 0xcd1c;
    NR = 990;
    CONDITION = DIA_KUNO_OLDTOWNHELLO_CONDITION;
    INFORMATION = DIA_KUNO_OLDTOWNHELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_KUNO_OLDTOWNHELLO_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 0xf09f)) && (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q308)) == (LOG_SUCCESS)))) && (!(NPC_KNOWSINFO(OTHER, 0x12585)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_OLDTOWNHELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Kuno_OldTownHello_03_01");
}

instance DIA_KUNO_AMBIENT(C_INFO) {
    NPC = 0xcd1c;
    NR = 990;
    CONDITION = DIA_KUNO_AMBIENT_CONDITION;
    INFORMATION = DIA_KUNO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_KUNO_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x125b4)) || (NPC_KNOWSINFO(OTHER, 0x12585))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (((LOG_GETSTATUS(MIS_Q308)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_Q308)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Ambient_03_01");
    };
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q308)) == (LOG_SUCCESS))) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kuno_Ambient_03_03");
    };
}

instance DIA_KUNO_PICKPOCKET(C_INFO) {
    NPC = 0xcd1c;
    NR = 900;
    CONDITION = DIA_KUNO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KUNO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_KUNO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KUNO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x125ba);
    INFO_ADDCHOICE(0x125ba, DIALOG_BACK, 0x125be);
    INFO_ADDCHOICE(0x125ba, DIALOG_PICKPOCKET, 0x125bd);
}

func void DIA_KUNO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x859f, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x125ba);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x125ba);
}

func void DIA_KUNO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x125ba);
}

