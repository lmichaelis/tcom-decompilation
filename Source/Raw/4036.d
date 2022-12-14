instance DIA_NIKOLT_EXIT(C_INFO) {
    NPC = 0xdc0d;
    NR = 999;
    CONDITION = DIA_NIKOLT_EXIT_CONDITION;
    INFORMATION = DIA_NIKOLT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NIKOLT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NIKOLT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NIKOLT_NEW(C_INFO) {
    NPC = 0xdc0d;
    NR = 1;
    CONDITION = DIA_NIKOLT_NEW_CONDITION;
    INFORMATION = DIA_NIKOLT_NEW_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NIKOLT_NEW_CONDITION() {
    if ((QA306_GOTOARAXOSMINE) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLT_NEW_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_03_04");
    INFO_CLEARCHOICES(0x133db);
    INFO_ADDCHOICE(0x133db, "Gold always comes in handy.", 0x133e0);
    INFO_ADDCHOICE(0x133db, "Depends on what the proposal is.", 0x133df);
}

func void DIA_NIKOLT_NEW_GOLD_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Next_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Next_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Next_03_05");
    AI_RESETFACEANI(OTHER);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_NIKOLT_NEEDHELP);
    };
    INFO_CLEARCHOICES(0x133db);
    INFO_ADDCHOICE(0x133db, "I happen to be busy.", 0x133e4);
    INFO_ADDCHOICE(0x133db, "Fine, just hurry up.", 0x133e3);
    INFO_ADDCHOICE(0x133db, "Why me?", 0x133e1);
}

func void DIA_NIKOLT_NEW_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_What_03_02");
    DIA_NIKOLT_NEW_GOLD_NEXT();
}

func void DIA_NIKOLT_NEW_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Gold_03_02");
    DIA_NIKOLT_NEW_GOLD_NEXT();
}

func void DIA_NIKOLT_NEW_GOLD_NEXT_WHY() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Why_03_03");
    AI_RESETFACEANI(OTHER);
}

var int NIKOLT_SQ119_TAKEQUEST = 0;
func void DIA_NIKOLT_NEW_GOLD_NEXT_SURE() {
    SQ119_CANWORKWITHNIKOLTGOLDMOB = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Sure_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Sure_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Sure_03_03");
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_NIKOLT_AGREEHELP);
    };
    INFO_CLEARCHOICES(0x133db);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "BREAK");
}

func void DIA_NIKOLT_NEW_GOLD_NEXT_BUSY() {
    NIKOLT_SQ119_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_New_Busy_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_New_Busy_03_02");
    INFO_CLEARCHOICES(0x133db);
    AI_RESETFACEANI(SELF);
}

instance DIA_NIKOLT_GUARDGOLD(C_INFO) {
    NPC = 0xdc0d;
    NR = 1;
    CONDITION = DIA_NIKOLT_GUARDGOLD_CONDITION;
    INFORMATION = DIA_NIKOLT_GUARDGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right, I'll watch your deposit.";
}

func int DIA_NIKOLT_GUARDGOLD_CONDITION() {
    if (((NIKOLT_SQ119_TAKEQUEST) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 0x133db))) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLT_GUARDGOLD_INFO() {
    DIA_NIKOLT_NEW_GOLD_NEXT_SURE();
}

instance DIA_NIKOLT_AFTEREVENT(C_INFO) {
    NPC = 0xdc0d;
    NR = 1;
    CONDITION = DIA_NIKOLT_AFTEREVENT_CONDITION;
    INFORMATION = DIA_NIKOLT_AFTEREVENT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NIKOLT_AFTEREVENT_CONDITION() {
    if ((((SQ119_TOLLEKRESULT) == (1)) && (NPC_KNOWSINFO(OTHER, 0x13404))) || ((SQ119_TOLLEKRESULT) == (2))) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLT_AFTEREVENT_INFO() {
    INFO_CLEARCHOICES(0x133e8);
    if ((SQ119_TOLLEKRESULT) == (1)) {
        NPC_EXCHANGEROUTINE(SELF, "BREAK");
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_03_01");
        AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_03_04");
        if ((NPC_HASITEMS(OTHER, 0x837c)) >= (1)) {
            INFO_ADDCHOICE(0x133e8, "All right, that sounds like a reasonable solution.", 0x133ec);
        };
        INFO_ADDCHOICE(0x133e8, "No way! This is not what we agreed to.", 0x133eb);
    };
    NPC_EXCHANGEROUTINE(SELF, "WORK");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_03_05");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_15_06");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_03_07");
    INFO_ADDCHOICE(0x133e8, "He wanted to offer me a lesson in mining. On your piece of the deposit.", 0x133f0);
    INFO_ADDCHOICE(0x133e8, "Actually, he was just passing through.", 0x133ef);
}

func void DIA_NIKOLT_AFTEREVENT_NOWAY() {
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) - (1);
    PRINTD(CS2("Reputacja u g?rnik?w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_NoWay_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_NoWay_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_NIKOLT_RESULT_V1);
    };
    INFO_CLEARCHOICES(0x133e8);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "BREAK");
}

func void DIA_NIKOLT_AFTEREVENT_OKAY() {
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) + (1);
    PRINTD(CS2("Reputacja u g?rnik?w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    MARVIN_CURRENTGOLDNUGGETCOUNT = NPC_HASITEMS(OTHER, 0x837c);
    B_GIVEINVITEMS(OTHER, SELF, 0x837c, MARVIN_CURRENTGOLDNUGGETCOUNT);
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_Okay_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_Okay_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_Okay_03_03");
    AI_RESETFACEANI(OTHER);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_NIKOLT_RESULT_V2);
    };
    INFO_CLEARCHOICES(0x133e8);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "BREAK");
}

var int DIA_NIKOLT_AFTEREVENT_OKAY.MARVIN_CURRENTGOLDNUGGETCOUNT = 0;
func void DIA_NIKOLT_AFTEREVENT_NEXT() {
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) + (2);
    PRINTD(CS2("Reputacja u g?rnik?w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_Next_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_Next_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_NIKOLT_RESULT_V3);
    };
    INFO_CLEARCHOICES(0x133e8);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "WORK");
}

func void DIA_NIKOLT_AFTEREVENT_NOTHINGBAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_NothingBad_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_NothingBad_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_NothingBad_03_03");
    DIA_NIKOLT_AFTEREVENT_NEXT();
}

func void DIA_NIKOLT_AFTEREVENT_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nikolt_AfterEvent_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_AfterEvent_Help_03_02");
    DIA_NIKOLT_AFTEREVENT_NEXT();
}

instance DIA_NIKOLT_QA306_WHATSUP(C_INFO) {
    NPC = 0xdc0d;
    NR = 1;
    CONDITION = DIA_NIKOLT_QA306_WHATSUP_CONDITION;
    INFORMATION = DIA_NIKOLT_QA306_WHATSUP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the mood here over the past few days?";
}

func int DIA_NIKOLT_QA306_WHATSUP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 0x13625)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLT_QA306_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$QA306_MARVIN_WHATSUP");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolt_QA306_WhatsUp_03_01");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_NIKOLT_PICKPOCKET(C_INFO) {
    NPC = 0xdc0d;
    NR = 900;
    CONDITION = DIA_NIKOLT_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NIKOLT_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_NIKOLT_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLT_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x133f4);
    INFO_ADDCHOICE(0x133f4, DIALOG_BACK, 0x133f8);
    INFO_ADDCHOICE(0x133f4, DIALOG_PICKPOCKET, 0x133f7);
}

func void DIA_NIKOLT_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x837c, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x837c, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x133f4);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x133f4);
}

func void DIA_NIKOLT_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x133f4);
}

